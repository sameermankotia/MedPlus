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
        Schema::table('quiz_attempts', function (Blueprint $table) {

            $table->integer('tests_score')->nullable();
            $table->integer('diagnosis_score')->nullable();
            $table->integer('medication_score')->nullable();
            $table->integer('quiz_score')->nullable();
            $table->integer('followup_quiz_tests_score')->nullable();
            $table->integer('followup_quiz_diagnosis_score')->nullable();
            $table->integer('followup_quiz_medication_score')->nullable();


        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('quiz_attempts', function (Blueprint $table) {
            //
        });
    }
};
