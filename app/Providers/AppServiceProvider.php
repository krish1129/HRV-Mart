<?php

namespace App\Providers;

use App\Models\Category;
use App\Models\Image;
use App\Models\Language;
use App\Models\Noti;
use App\Models\Product;
use App\Models\Top_Banner;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $admin_lang = DB::table('admin_languages')->where('is_default', '=', 1)->first();
        App::setlocale($admin_lang->name);
        view()->composer('*', function ($settings) {
            $settings->with('ps', DB::table('pagesettings')->where('id', '=', 1)->first());
            $settings->with('gs', DB::table('generalsettings')->find(1));
            $settings->with('seo', DB::table('seotools')->find(1));
            $settings->with('categories', Category::where('status', '=', 1)->get());
            if (Session::has('language')) {
                $data = DB::table('languages')->find(Session::get('language'));
                $data_results = file_get_contents(public_path() . '/assets/languages/' . $data->file);
                $lang = json_decode($data_results);
                $alang = Language::where('is_default', 1)->first();
                $lang->id = $data->id;
                $settings->with('alang', $alang);
                $settings->with('langg', $lang);
            } else {
                $data = DB::table('languages')->where('is_default', '=', 1)->first();
                $data_results = file_get_contents(public_path() . '/assets/languages/' . $data->file);
                $lang = json_decode($data_results);
                $alang = Language::where('is_default', 1)->first();
                $lang->id = $data->id;
                $settings->with('alang', $alang);
                $settings->with('langg', $lang);
            }
            if (Schema::hasTable('images')) {
                $image = Image::first();
                View::share('image', $image);
            }
            if (Schema::hasTable('images')) {
                $image = Image::first();
                View::share('image', $image);
            }

            if (!Session::has('popup')) {
                $settings->with('visited', 1);
            }
            Session::put('popup', 1);
        });

        // product
        if (Schema::hasTable('products')) {
            $product = Product::where('status', 1)->latest()->limit(10)->get();
            $i = 0;
            foreach ($product as $item) {
                $check = Noti::where('session_id', request()->ip())->where('product_id', $item->id)->first();
                if ($check) {
                    $i++;
                }
            }
            $noti_count = count($product) - $i;
            view()->share([
                'ad_product' => $product,
                'noti_count' => $noti_count
            ]);
        }
        // product
        if (Schema::hasTable('top_banner')) {
            $top = Top_Banner::first();
            view()->share('bnner', $top);
        }
    }
}
