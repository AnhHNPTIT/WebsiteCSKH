<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Category;
use App\Post;
use App\Tag;

use App\Slide;

use View;

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
        if(!\App::runningInConsole()){
            // chu de
            View::share('categories', Category::whereNotIn('id', [1, 6, 7])->get());

            // the bai viet
            View::share('tags', Tag::all());

            // bai viet
            View::share('new_posts', Post::orderBy('created_at', 'desc')->take(12)->get());

            // banner   
            View::share('banners', Slide::orderBy('display_order', 'asc')->where('status', 1)->get());
        }
    }
}
