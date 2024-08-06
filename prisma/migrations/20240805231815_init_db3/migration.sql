/*
  Warnings:

  - You are about to drop the column `createAt` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `updateAt` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `createAt` on the `BarbershopService` table. All the data in the column will be lost.
  - You are about to drop the column `updateAt` on the `BarbershopService` table. All the data in the column will be lost.
  - You are about to drop the column `createAt` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `password` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `updateAt` on the `User` table. All the data in the column will be lost.
  - Added the required column `updatedAt` to the `Barbershop` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `BarbershopService` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Barbershop" DROP COLUMN "createAt",
DROP COLUMN "phone",
DROP COLUMN "updateAt",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "phones" TEXT[],
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "BarbershopService" DROP COLUMN "createAt",
DROP COLUMN "updateAt",
ADD COLUMN     "description" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "createAt",
DROP COLUMN "password",
DROP COLUMN "updateAt",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;
