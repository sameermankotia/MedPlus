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
            $table->string('mode');
            $table->text('hint');
            $table->string('diagnosis_correct_one');
            $table->text('test_correct_one');
           
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
