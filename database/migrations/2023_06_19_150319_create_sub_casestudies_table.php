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
        Schema::create('sub_casestudies', function (Blueprint $table) {
            $table->id();
            $table->integer('type');
            $table->string('name');
            $table->string('result');
            $table->string('image');
            $table->string('hint_first');
            $table->string('hint_image_1');
            $table->string('hint_second');
            $table->string('hint_image_2');
            $table->string('hint_third');
            $table->string('hint_image_3');
            $table->string('followup_question');
            $table->string('followup_option_1');
            $table->string('followup_option_2');
            $table->string('followup_option_3');
            $table->string('followup_option_4');
            $table->string('followup_correct_one');
            $table->string('feedback_text');
            $table->string('feedback_image');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sub_casestudies');
    }
};
