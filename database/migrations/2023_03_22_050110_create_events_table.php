<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->string('event_type')->nullable();
            $table->string('title');
            $table->string('slug');
            $table->integer('user_id');
            $table->string('start_date')->nullable();
            $table->string('end_date')->nullable();
            $table->string('address')->nullable();
            $table->string('location')->nullable();
            $table->string('logo')->nullable();
            $table->string('banner')->nullable();
            $table->text('description')->nullable();
            $table->string('entry_fee')->nullable();
            $table->integer('status');
            $table->timestamps();
        });
    }
    
    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('events');
    }
};
