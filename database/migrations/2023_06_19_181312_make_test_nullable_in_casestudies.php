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
        Schema::table('casestudies', function (Blueprint $table) {
            $table->text('test')->nullable()->change();
            $table->text('diagnosis')->nullable()->change();
            $table->text('medication')->nullable()->change();
            $table->text('img')->nullable()->change();
            $table->text('hint')->nullable()->change();
            $table->string('q_question')->nullable()->change();
            $table->text('options')->nullable()->change();
            $table->string('correct_one')->nullable()->change();
            $table->string('diagnosis_correct_one')->nullable()->change();
            $table->text('test_correct_one')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('casestudies', function (Blueprint $table) {
            //
        });
    }
};
