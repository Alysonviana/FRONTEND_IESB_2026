/*
  Warnings:

  - You are about to drop the column `updatedAt` on the `Settings` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Task` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Settings" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "workTime" INTEGER NOT NULL,
    "shortBreakTime" INTEGER NOT NULL,
    "longBreakTime" INTEGER NOT NULL
);
INSERT INTO "new_Settings" ("id", "longBreakTime", "shortBreakTime", "workTime") SELECT "id", "longBreakTime", "shortBreakTime", "workTime" FROM "Settings";
DROP TABLE "Settings";
ALTER TABLE "new_Settings" RENAME TO "Settings";
CREATE TABLE "new_Task" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "duration" INTEGER NOT NULL,
    "type" TEXT NOT NULL,
    "startDate" BIGINT NOT NULL,
    "completeDate" BIGINT,
    "interruptDate" BIGINT
);
INSERT INTO "new_Task" ("completeDate", "duration", "id", "interruptDate", "name", "startDate", "type") SELECT "completeDate", "duration", "id", "interruptDate", "name", "startDate", "type" FROM "Task";
DROP TABLE "Task";
ALTER TABLE "new_Task" RENAME TO "Task";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
