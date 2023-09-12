/*
  Warnings:

  - You are about to drop the column `county` on the `Addresses` table. All the data in the column will be lost.
  - You are about to drop the column `county` on the `Orders` table. All the data in the column will be lost.
  - Added the required column `country` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country` to the `Orders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stripeId` to the `Orders` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Addresses" DROP COLUMN "county",
ADD COLUMN     "country" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Orders" DROP COLUMN "county",
ADD COLUMN     "country" TEXT NOT NULL,
ADD COLUMN     "stripeId" TEXT NOT NULL;
