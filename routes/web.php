<?php
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\WelcomeController;
use App\Http\Controllers\CommitteeController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ContentController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\NoticeController;
use App\Http\Controllers\VideoController;
use App\Http\Controllers\SiteoptionController;
use App\Http\Controllers\LandingController;
use App\Http\Controllers\PagesettingController;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\BranchController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\TagController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\ChangepasswordController;
use App\Http\Controllers\PressController;
use App\Http\Controllers\RolemanagementController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CommentController;




/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('ccc', function(){
    Artisan::call('config:clear');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    Artisan::call('view:cache');
    return "Config-Cache is cleared";
});

Route::get('/', [HomeController::class,'landing'])->name('landing');
Route::get('/four-zero-four', [WelcomeController::class,'four_zero_four'])->name('four-zero-four');
Route::get('/excel', [WelcomeController::class,'excel'])->name('excel');

// Route::get('/member-login', [HomeController::class,'member_login'])->name('member.login');
// Route::get('/contact', [ContactController::class,'contact'])->name('contact');
 Route::post('/contact-store', [ContactController::class,'contact_store'])->name('contact.store');
 Route::post('/member-message', [ContactController::class,'member_message'])->name('member.message');
 Route::post('/comment-store', [ContactController::class,'comment_store'])->name('comment.store');
 Route::post('/subscribe-store', [WelcomeController::class,'subscribe_store'])->name('subscribe.store');
// Route::get('/about-us', [ContentController::class,'about_us'])->name('about.us');
// Route::get('/gallery', [ContentController::class,'gallery'])->name('gallery');
// Route::get('/gallery/{id}', [ContentController::class,'gallery_details'])->name('gallery.details');
// //blog
// Route::get('/news', [ContentController::class,'news'])->name('gallery');
// Route::get('/news/{id}', [ContentController::class,'news_details'])->name('news.details');
// //event
// Route::get('/event', [ContentController::class,'event'])->name('event');
// Route::get('/event/{id}', [ContentController::class,'event_details'])->name('event.details');
// //notice
// Route::get('/notice', [ContentController::class,'notice'])->name('notice');
// Route::get('/notice/{id}', [ContentController::class,'notices_details'])->name('notice.details');
Route::get('change-password', [ChangePasswordController::class,'index'])->name('change_password');
Route::post('change-password', [ChangePasswordController::class,'store'])->name('change.password');
Route::middleware(['auth','user-permission'])->group(function () {
 //   Route::view('home', 'home')->name('home');
    Route::get('home', [WelcomeController::class,'home'])->name('home');
    Route::prefix('admin')->group(function () {
        Route::resource('welcome', WelcomeController::class);
        Route::resource('logo', AdminController::class);
        Route::get('profile/edit', [UserController::class,'edit_admin_profile'])->name('edit_admin_profile');
        Route::post('profile/update/{id}', [UserController::class,'update_admin_profile'])->name('update_admin_profile');
        Route::get('subscribers', [WelcomeController::class,'subscribers'])->name('subscribers');
        Route::resource('slider', SliderController::class);
        Route::resource('committee', CommitteeController::class);
        Route::resource('blog', BlogController::class);
        Route::resource('news', NewsController::class);
        Route::resource('event', EventController::class);
        Route::resource('gallery', GalleryController::class);
        Route::resource('user', UserController::class);
        Route::post('gallerycompany/{id}', [GalleryController::class,'gallerycompany'])->name('gallerycompany');
        Route::post('offercompany/{id}', [GalleryController::class,'offercompany'])->name('offercompany');
        Route::post('productcompany/{id}', [GalleryController::class,'productcompany'])->name('productcompany');
        Route::post('servicecompany/{id}', [GalleryController::class,'servicecompany'])->name('servicecompany');
        Route::resource('notice', NoticeController::class);
        Route::resource('video', VideoController::class);
        Route::resource('page', PageController::class);
        Route::resource('tag', TagController::class);
        Route::resource('press', PressController::class);
        Route::get('contact/view', [ContactController::class,'contact_view'])->name('contact.view');
        Route::resource('member', MemberController::class);
        Route::get('member/{company}/{id}', [MemberController::class,'company']);
        Route::post('committee_employee/delete/{employee_id}/{content_id}', [ContentController::class,'committee_employee']);
        Route::resource('employee', EmployeeController::class);
        Route::resource('branch', BranchController::class);  
        Route::resource('landing', LandingController::class);
        Route::resource('siteoption', SiteoptionController::class);
        Route::resource('pagesetting', PagesettingController::class);
        Route::resource('upload', UploadController::class);
        Route::post('upload/search', [UploadController::class,'search']);
        // specified route for create and manage landing pages
        Route::post('a/{slug}', [LandingController::class,'checkExistsPagelink']);
        Route::post('pagelinkediting/{slug}', [LandingController::class,'getEditPagelinkId']);
        // specified route for manage committee members
        Route::post('findemployee/{slug}', [EmployeeController::class,'findByName']);
        Route::post('savecommittee', [EmployeeController::class,'savecommitteemember']);
        // tag search
        Route::post('searchTag/{slug}', [TagController::class,'findByTitle']);
        Route::post('changestatus/{table}/{id}/{newstatus}', [CommentController::class,'changestatus']);
    });
});

// Route::get('/member/company', [RolemanagementController::class,'company_profile'])->name('member_company.profile');
// Route::get('/member/company/gallery',[RolemanagementController::class,'company_gallery'])->name('member.gallery');
// // Route::get('/member/company/offer', [RolemanagementController::class,'company_offer'])->name('member.offer');
// Route::get('/member/company/employee', [RolemanagementController::class,'company_employee'])->name('member.employee');
// Route::get('/member/company/branch', [RolemanagementController::class,'company_branch'])->name('member.branch');
// Route::get('/member/company/product', [RolemanagementController::class,'company_product'])->name('member.product');
// Route::get('/member/company/service', [RolemanagementController::class,'company_service'])->name('member.service');

Route::prefix('member')->group(function () {
    // Route::view('home', 'home')->name('member.home');
    Route::get('/edit', [RolemanagementController::class,'member_edit'])->name('member.edit');
    Route::get('/employee/add', [RolemanagementController::class,'employee_add'])->name('employee.add');
    Route::get('/branch/add', [RolemanagementController::class,'branch_add'])->name('branch.add');
    Route::get('/branch/edit', [RolemanagementController::class,'branch_edit'])->name('branch.edit');
    Route::get('/branch/delete/{id}', [RolemanagementController::class,'branch_delete'])->name('branch.delete');
    Route::get('/gallery', [RolemanagementController::class,'member_gallery'])->name('member.gallery');
    Route::get('/offer', [RolemanagementController::class,'member_offer'])->name('member.offer');
    Route::get('/product', [RolemanagementController::class,'member_product'])->name('member.product');
    Route::get('/service', [RolemanagementController::class,'member_service'])->name('member.service');
    Route::post('gallerycompany/{id}', [GalleryController::class,'gallerycompany'])->name('gallerycompany');
    Route::post('offercompany/{id}', [GalleryController::class,'offercompany'])->name('memberoffercompany');
    Route::post('productcompany/{id}', [GalleryController::class,'productcompany'])->name('memberproductcompany');
    Route::post('servicecompany/{id}', [GalleryController::class,'servicecompany'])->name('memberservicecompany');
    Route::resource('employee', EmployeeController::class);
    Route::resource('branch', BranchController::class);
    Route::post('/company/{id}', [MemberController::class,'update'])->name('member_company_edit');
    Route::get('memberMassage', [ContactController::class,'member_msg_view'])->name('member_msg.view');
});

/*
 *  All landing page for public website
 */
Route::get('/{pagelink}', [HomeController::class,'landing']);