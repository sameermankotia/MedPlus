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
        Schema::table('sub_casestudies', function (Blueprint $table) {
            $table->integer('type')->nullable()->change();
            $table->string('name')->nullable()->change();
            $table->string('result')->nullable()->change();
            $table->string('image')->nullable()->change();
            $table->string('hint_first')->nullable()->change();
            $table->string('hint_image_1')->nullable()->change();
            $table->string('hint_second')->nullable()->change();
            $table->string('hint_image_2')->nullable()->change();
            $table->string('hint_third')->nullable()->change();
            $table->string('hint_image_3')->nullable()->change();
            $table->string('followup_question')->nullable()->change();
            $table->string('followup_option_1')->nullable()->change();
            $table->string('followup_option_2')->nullable()->change();
            $table->string('followup_option_3')->nullable()->change();
            $table->string('followup_option_4')->nullable()->change();
            $table->string('followup_correct_one')->nullable()->change();
            $table->string('feedback_text')->nullable()->change();
            $table->string('feedback_image')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('sub_casestudies', function (Blueprint $table) {
            //
        });
    }
};
