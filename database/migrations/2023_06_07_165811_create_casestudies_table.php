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
        Schema::create('casestudies', function (Blueprint $table) {
            $table->id();
            $table->integer('department');
            $table->text('history');
            $table->string('q_question');
            $table->text('options');
            $table->string('correct_one');
            $table->text('test');
            $table->text('diagnosis');
            $table->text('medication');
            $table->text('img');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('casestudies');
    }
};
