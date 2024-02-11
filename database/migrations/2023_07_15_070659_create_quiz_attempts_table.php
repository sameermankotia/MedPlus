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
        Schema::create('quiz_attempts', function (Blueprint $table) {
            $table->id();
            $table->integer('case_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->boolean('history')->nullable();
            $table->text('quiz_answer')->nullable();
            $table->text('tests')->nullable();
            $table->text('diagnosis')->nullable();
            $table->text('medication')->nullable();
            $table->integer('score')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('quiz_attempts');
    }
};
