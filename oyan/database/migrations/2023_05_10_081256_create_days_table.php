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
        Schema::create('days', function (Blueprint $table) {
            $table->id();
            $table->string('day');
            $table->dateTime('fitnessDate')->nullable();
            $table->string('breathData')->nullable();
            $table->string('moodData')->nullable();
            $table->string('memoryData')->nullable();
            $table->string('cogniData')->nullable();
            $table->dateTime('launchDate')->nullable();
            $table->string('isActivity')->default(false);
            $table->string('note')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('days');
    }
};
