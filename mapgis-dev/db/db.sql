/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 180000 (180000)
 Source Host           : localhost:5432
 Source Catalog        : mapgis
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 180000 (180000)
 File Encoding         : 65001

 Date: 13/11/2025 07:33:08
*/


-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS "public"."dict";
CREATE TABLE "public"."dict" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_group_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_value" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_index" int4 NOT NULL
)
;

-- ----------------------------
-- Records of dict
-- ----------------------------

-- ----------------------------
-- Table structure for dict_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."dict_group";
CREATE TABLE "public"."dict_group" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "group_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "group_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "group_index" int4 NOT NULL
)
;

-- ----------------------------
-- Records of dict_group
-- ----------------------------

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS "public"."district";
CREATE TABLE "public"."district" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "district_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "district_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "district_index" int4 NOT NULL
)
;

-- ----------------------------
-- Records of district
-- ----------------------------

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS "public"."group";
CREATE TABLE "public"."group" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "group_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for layer
-- ----------------------------
DROP TABLE IF EXISTS "public"."layer";
CREATE TABLE "public"."layer" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "service_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "layer_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "layer_index" int4 NOT NULL
)
;

-- ----------------------------
-- Records of layer
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu";
CREATE TABLE "public"."menu" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" varchar(64) COLLATE "pg_catalog"."default",
  "menu_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "menu_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "menu_index" int4 NOT NULL
)
;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS "public"."role";
CREATE TABLE "public"."role" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "role_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "role_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS "public"."service";
CREATE TABLE "public"."service" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "service_group_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "service_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "display_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar(512) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of service
-- ----------------------------

-- ----------------------------
-- Table structure for service_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."service_group";
CREATE TABLE "public"."service_group" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" varchar(64) COLLATE "pg_catalog"."default",
  "group_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "group_index" int4 NOT NULL
)
;

-- ----------------------------
-- Records of service_group
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "public"."user";
CREATE TABLE "public"."user" (
  "id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dict
-- ----------------------------
ALTER TABLE "public"."dict" ADD CONSTRAINT "dict_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table dict_group
-- ----------------------------
ALTER TABLE "public"."dict_group" ADD CONSTRAINT "dict_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table district
-- ----------------------------
ALTER TABLE "public"."district" ADD CONSTRAINT "district_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table group
-- ----------------------------
ALTER TABLE "public"."group" ADD CONSTRAINT "group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table layer
-- ----------------------------
ALTER TABLE "public"."layer" ADD CONSTRAINT "layer_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table menu
-- ----------------------------
ALTER TABLE "public"."menu" ADD CONSTRAINT "menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "public"."role" ADD CONSTRAINT "ROLE_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table service
-- ----------------------------
ALTER TABLE "public"."service" ADD CONSTRAINT "service_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table service_group
-- ----------------------------
ALTER TABLE "public"."service_group" ADD CONSTRAINT "service_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "public"."user" ADD CONSTRAINT "user_pkey" PRIMARY KEY ("id");
