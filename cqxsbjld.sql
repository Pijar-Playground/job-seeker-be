-- -------------------------------------------------------------
-- TablePlus 5.3.0(486)
--
-- https://tableplus.com/
--
-- Database: cqxsbjld
-- Generation Time: 2023-02-07 23:22:34.2740
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS hire_histories_id_seq;

-- Table Definition
CREATE TABLE "public"."hire_histories" (
    "id" int4 NOT NULL DEFAULT nextval('hire_histories_id_seq'::regclass),
    "user_id" int4,
    "description" varchar(255),
    "phone_number" varchar(255),
    "purpose" varchar(255),
    "fullname" varchar(255),
    "email" varchar(255),
    "createdAt" timestamptz NOT NULL,
    "updatedAt" timestamptz NOT NULL,
    "recruiter_id" int4,
    PRIMARY KEY ("id")
);



-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS portfolios_id_seq;

-- Table Definition
CREATE TABLE "portfolios" (
    "id" int4 NOT NULL DEFAULT nextval('portfolios_id_seq'::regclass),
    "name" varchar(255),
    "photo" text,
    "link" text,
    "user_id" int4,
    "createdAt" timestamptz NOT NULL,
    "updatedAt" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS recruiters_id_seq;

-- Table Definition
CREATE TABLE "recruiters" (
    "id" int4 NOT NULL DEFAULT nextval('recruiters_id_seq'::regclass),
    "company" varchar(255),
    "position" varchar(255),
    "createdAt" timestamptz NOT NULL,
    "updatedAt" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "SequelizeMeta" (
    "name" varchar(255) NOT NULL,
    PRIMARY KEY ("name")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS user_details_id_seq;

-- Table Definition
CREATE TABLE "user_details" (
    "id" int4 NOT NULL DEFAULT nextval('user_details_id_seq'::regclass),
    "job" varchar(255) DEFAULT 'unknown'::character varying,
    "domicile" varchar(255) DEFAULT 'unknown'::character varying,
    "company" varchar(255) DEFAULT 'unknown'::character varying,
    "description" varchar(255) DEFAULT '-'::character varying,
    "skills" varchar(255) DEFAULT '[]'::character varying,
    "user_id" int4 NOT NULL,
    "createdAt" timestamptz NOT NULL,
    "updatedAt" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS users_id_seq;

-- Table Definition
CREATE TABLE "public"."users" (
    "id" int4 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
    "fullname" varchar(255),
    "email" varchar(255),
    "password" varchar(255),
    "phone_number" varchar(255),
    "photo_profile" varchar(255) DEFAULT 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg'::character varying,
    "recruiter_id" int4 DEFAULT 0,
    "createdAt" timestamptz NOT NULL,
    "updatedAt" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."hire_histories" ("id", "user_id", "description", "phone_number", "purpose", "fullname", "email", "createdAt", "updatedAt", "recruiter_id") VALUES
(1, 1, '', '', 'Projek', '', '', '2023-02-02 06:38:05.92+00', '2023-02-02 06:38:05.92+00', NULL),
(2, 1, 'hello', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-02 06:39:09.371+00', '2023-02-02 06:39:09.371+00', NULL),
(3, 1, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-02 06:41:33.419+00', '2023-02-02 06:41:33.419+00', NULL),
(4, 1, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-06 13:27:06.438+00', '2023-02-06 13:27:06.438+00', NULL),
(5, 1, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-06 13:28:08.087+00', '2023-02-06 13:28:08.087+00', 10),
(6, 1, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-06 13:35:21.154+00', '2023-02-06 13:35:21.154+00', 10);

INSERT INTO "public"."portfolios" ("id", "name", "photo", "link", "user_id", "createdAt", "updatedAt") VALUES
(1, 'Test', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 10, '2023-02-07 16:09:27.782+00', '2023-02-07 16:09:27.782+00'),
(2, 'Test', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 10, '2023-02-07 16:18:10.793+00', '2023-02-07 16:18:10.793+00');

INSERT INTO "public"."recruiters" ("id", "company", "position", "createdAt", "updatedAt") VALUES
(1, 'Pijar', 'Technical Trainer', '2023-01-31 22:50:16.938+00', '2023-01-31 22:50:16.938+00'),
(2, 'Pijar', 'Technical Trainer', '2023-01-31 23:14:16.497+00', '2023-01-31 23:14:16.497+00'),
(3, 'pijar', 'Fullstack Developer', '2023-02-01 04:18:31.941+00', '2023-02-01 04:18:31.941+00'),
(4, 'tes', 'tes', '2023-02-01 04:28:46.428+00', '2023-02-01 04:28:46.428+00'),
(5, 'tes', 'tes', '2023-02-01 04:31:28.884+00', '2023-02-01 04:31:28.884+00'),
(6, 'Toyota', 'Manager', '2023-02-01 10:00:40.056+00', '2023-02-01 10:00:40.056+00'),
(7, 'Traveloka', 'Backend Developer', '2023-02-02 04:22:00.885+00', '2023-02-02 04:22:00.885+00'),
(8, 'Traveloka', 'Backend Developer', '2023-02-02 04:24:26.581+00', '2023-02-02 04:24:26.581+00'),
(9, 'Traveloka', 'Backend Developer', '2023-02-02 04:27:22.883+00', '2023-02-02 04:27:22.883+00'),
(10, 'Pijar', 'Technical Trainer', '2023-02-02 05:57:25.366+00', '2023-02-02 05:57:25.366+00'),
(11, 'Pijar', 'Technical Trainer', '2023-02-02 07:30:47.441+00', '2023-02-02 07:30:47.441+00'),
(12, 'Pijar', 'Technical Trainer', '2023-02-02 07:34:03.983+00', '2023-02-02 07:34:03.983+00'),
(13, 'Pijar', 'Technical Trainer', '2023-02-02 09:05:41.909+00', '2023-02-02 09:05:41.909+00'),
(14, 'Pijar', 'Technical Trainer', '2023-02-02 13:24:26.746+00', '2023-02-02 13:24:26.746+00'),
(15, 'Pijar', 'Technical Trainer', '2023-02-02 15:51:23.529+00', '2023-02-02 15:51:23.529+00'),
(16, 'Pijar', 'Technical Trainer', '2023-02-02 17:14:32.217+00', '2023-02-02 17:14:32.217+00'),
(17, 'unknown', 'unknown', '2023-02-02 17:43:36.894+00', '2023-02-02 17:43:36.894+00'),
(18, 'tester', 'tester', '2023-02-02 17:45:27.496+00', '2023-02-02 17:45:27.496+00'),
(19, 'Pijar', 'Technical Trainer', '2023-02-02 23:31:44.276+00', '2023-02-02 23:31:44.276+00'),
(20, 'Pijar', 'Technical Trainer', '2023-02-02 23:34:54.46+00', '2023-02-02 23:34:54.46+00'),
(21, 'Pijar', 'Trainer', '2023-02-02 23:52:33.571+00', '2023-02-02 23:52:33.571+00'),
(22, 'Pijar', 'Trainer', '2023-02-02 23:57:06.103+00', '2023-02-02 23:57:06.103+00'),
(23, 'Pijar', 'Trainer', '2023-02-03 00:10:29.047+00', '2023-02-03 00:10:29.047+00'),
(24, 'Pijar', 'Trainer', '2023-02-03 00:36:44.399+00', '2023-02-03 00:36:44.399+00'),
(25, 'Pijar', 'Trainer', '2023-02-03 00:46:01.879+00', '2023-02-03 00:46:01.879+00'),
(26, 'Pijar', 'Trainer', '2023-02-03 00:46:25.383+00', '2023-02-03 00:46:25.383+00'),
(27, 'test', 'test', '2023-02-03 01:59:29.864+00', '2023-02-03 01:59:29.864+00'),
(28, 'Test Aja', 'Manager', '2023-02-03 02:04:14.348+00', '2023-02-03 02:04:14.348+00'),
(29, 'Test Aja', 'Manager', '2023-02-03 02:07:46.502+00', '2023-02-03 02:07:46.502+00'),
(30, 'Test Aja', 'Manager', '2023-02-03 02:14:45.729+00', '2023-02-03 02:14:45.729+00'),
(31, 'Pijar', 'Technical Trainer', '2023-02-03 02:41:20.24+00', '2023-02-03 02:41:20.24+00'),
(32, 'apa namanya', 'Trainer', '2023-02-03 04:42:15.852+00', '2023-02-03 04:42:15.852+00'),
(33, 'Pijar', 'Trainer', '2023-02-03 06:24:48.598+00', '2023-02-03 06:24:48.598+00'),
(34, 'Pijar', 'Trainer', '2023-02-03 06:25:17.916+00', '2023-02-03 06:25:17.916+00'),
(35, 'Pijar', 'Trainer', '2023-02-03 06:36:52.34+00', '2023-02-03 06:36:52.34+00'),
(36, 'Pijar', 'Programmer', '2023-02-03 06:59:14.835+00', '2023-02-03 06:59:14.835+00'),
(37, 'testerr', 'testerrr', '2023-02-03 07:14:47.976+00', '2023-02-03 07:14:47.976+00'),
(38, 'pijar', 'Trainer', '2023-02-03 07:41:36.333+00', '2023-02-03 07:41:36.333+00'),
(39, 'Pijar', 'Technical Trainer', '2023-02-03 09:24:09.189+00', '2023-02-03 09:24:09.189+00'),
(40, 'Oscorp', 'Manager', '2023-02-04 15:09:09.741+00', '2023-02-04 15:09:09.741+00'),
(41, 'Onic', 'Player', '2023-02-05 02:52:33.063+00', '2023-02-05 02:52:33.063+00'),
(42, 'Gojek', 'Senior Developer', '2023-02-05 04:03:06.752+00', '2023-02-05 04:03:06.752+00');

INSERT INTO "public"."SequelizeMeta" ("name") VALUES
('20210813074431-create-users.js'),
('20230130175159-create-recruiter.js'),
('20230131204357-create-hire-list.js'),
('20230131204433-create-user-detail.js'),
('20230202062716-create-hire-history.js'),
('20230207160021-create-portfolio.js');

INSERT INTO "public"."user_details" ("id", "job", "domicile", "company", "description", "skills", "user_id", "createdAt", "updatedAt") VALUES
(1, 'unknown', 'unknown', 'Pijar', '-', '["PHP","Javascript","Ruby","postgres"]', 1, '2023-01-31 22:50:17.176+00', '2023-01-31 22:50:17.176+00'),
(2, 'unknown', 'unknown', 'Pijar', '-', '[]', 2, '2023-01-31 23:14:16.797+00', '2023-01-31 23:14:16.797+00'),
(3, 'unknown', 'unknown', 'pijar', '-', '[]', 3, '2023-02-01 04:18:32.248+00', '2023-02-01 04:18:32.248+00'),
(4, 'unknown', 'unknown', 'tes', '-', '[]', 4, '2023-02-01 04:28:46.741+00', '2023-02-01 04:28:46.741+00'),
(5, 'unknown', 'unknown', 'tes', '-', '[]', 5, '2023-02-01 04:31:29.169+00', '2023-02-01 04:31:29.169+00'),
(6, 'unknown', 'unknown', 'Toyota', '-', '[]', 6, '2023-02-01 10:00:40.356+00', '2023-02-01 10:00:40.356+00'),
(7, 'unknown', 'unknown', 'Traveloka', '-', '[]', 7, '2023-02-02 04:22:01.198+00', '2023-02-02 04:22:01.198+00'),
(8, 'unknown', 'unknown', 'Traveloka', '-', '[]', 8, '2023-02-02 04:24:26.867+00', '2023-02-02 04:24:26.867+00'),
(9, 'unknown', 'unknown', 'Traveloka', '-', '[]', 9, '2023-02-02 04:27:23.169+00', '2023-02-02 04:27:23.169+00'),
(10, 'unknown', 'unknown', 'unknown', '11232131231232112', '["test"]', 10, '2023-02-02 05:57:25.667+00', '2023-02-07 15:51:34.632+00'),
(11, 'unknown', 'unknown', 'Pijar', '-', '[]', 11, '2023-02-02 07:30:47.752+00', '2023-02-02 07:30:47.752+00'),
(12, 'unknown', 'unknown', 'Pijar', '-', '[]', 12, '2023-02-02 07:34:04.268+00', '2023-02-02 07:34:04.268+00'),
(13, 'unknown', 'unknown', 'Pijar', '-', '[]', 13, '2023-02-02 09:05:42.212+00', '2023-02-02 09:05:42.212+00'),
(14, 'unknown', 'unknown', 'Pijar', '-', '[]', 14, '2023-02-02 13:24:27.041+00', '2023-02-02 13:24:27.041+00'),
(15, 'unknown', 'unknown', 'Pijar', '-', '[]', 15, '2023-02-02 15:51:23.823+00', '2023-02-02 15:51:23.823+00'),
(16, 'unknown', 'unknown', 'Pijar', '-', '[]', 16, '2023-02-02 17:14:32.526+00', '2023-02-02 17:14:32.526+00'),
(17, 'unknown', 'unknown', 'unknown', '-', '[]', 17, '2023-02-02 17:43:37.211+00', '2023-02-02 17:43:37.211+00'),
(18, 'unknown', 'unknown', 'tester', '-', '[]', 18, '2023-02-02 17:45:27.795+00', '2023-02-02 17:45:27.795+00'),
(19, 'unknown', 'unknown', 'Pijar', '-', '[]', 19, '2023-02-02 23:31:44.588+00', '2023-02-02 23:31:44.588+00'),
(20, 'unknown', 'unknown', 'Pijar', '-', '[]', 20, '2023-02-02 23:34:54.755+00', '2023-02-02 23:34:54.755+00'),
(21, 'unknown', 'unknown', 'Pijar', '-', '[]', 21, '2023-02-02 23:52:33.863+00', '2023-02-02 23:52:33.863+00'),
(22, 'unknown', 'unknown', 'Pijar', '-', '[]', 22, '2023-02-02 23:57:06.399+00', '2023-02-02 23:57:06.399+00'),
(23, 'unknown', 'unknown', 'Pijar', '-', '[]', 23, '2023-02-03 00:10:29.346+00', '2023-02-03 00:10:29.346+00'),
(24, 'unknown', 'unknown', 'Pijar', '-', '[]', 24, '2023-02-03 00:36:44.709+00', '2023-02-03 00:36:44.709+00'),
(25, 'unknown', 'unknown', 'Pijar', '-', '[]', 25, '2023-02-03 00:46:02.167+00', '2023-02-03 00:46:02.167+00'),
(26, 'unknown', 'unknown', 'Pijar', '-', '[]', 26, '2023-02-03 00:46:25.68+00', '2023-02-03 00:46:25.68+00'),
(27, 'unknown', 'unknown', 'test', '-', '[]', 27, '2023-02-03 01:59:30.165+00', '2023-02-03 01:59:30.165+00'),
(28, 'unknown', 'unknown', 'Test Aja', '-', '[]', 28, '2023-02-03 02:04:14.646+00', '2023-02-03 02:04:14.646+00'),
(29, 'unknown', 'unknown', 'Test Aja', '-', '[]', 29, '2023-02-03 02:07:46.789+00', '2023-02-03 02:07:46.789+00'),
(30, 'unknown', 'unknown', 'Test Aja', '-', '[]', 30, '2023-02-03 02:14:46.017+00', '2023-02-03 02:14:46.017+00'),
(31, 'unknown', 'unknown', 'Pijar', '-', '[]', 31, '2023-02-03 02:41:20.533+00', '2023-02-03 02:41:20.533+00'),
(32, 'unknown', 'unknown', 'apa namanya', '-', '[]', 32, '2023-02-03 04:42:16.144+00', '2023-02-03 04:42:16.144+00'),
(33, 'unknown', 'unknown', 'Pijar', '-', '[]', 33, '2023-02-03 06:24:48.903+00', '2023-02-03 06:24:48.903+00'),
(34, 'unknown', 'unknown', 'Pijar', '-', '[]', 34, '2023-02-03 06:25:18.202+00', '2023-02-03 06:25:18.202+00'),
(35, 'unknown', 'unknown', 'Pijar', '-', '[]', 35, '2023-02-03 06:36:52.632+00', '2023-02-03 06:36:52.632+00'),
(36, 'unknown', 'unknown', 'Pijar', '-', '[]', 36, '2023-02-03 06:59:15.132+00', '2023-02-03 06:59:15.132+00'),
(37, 'unknown', 'unknown', 'testerr', '-', '[]', 37, '2023-02-03 07:14:48.268+00', '2023-02-03 07:14:48.268+00'),
(38, 'unknown', 'unknown', 'pijar', '-', '[]', 38, '2023-02-03 07:41:36.625+00', '2023-02-03 07:41:36.625+00'),
(39, 'unknown', 'unknown', 'Pijar', '-', '[]', 39, '2023-02-03 09:24:09.499+00', '2023-02-03 09:24:09.499+00'),
(40, 'unknown', 'unknown', 'Oscorp', '-', '[]', 40, '2023-02-04 15:09:10.047+00', '2023-02-04 15:09:10.047+00'),
(41, 'unknown', 'unknown', 'Onic', '-', '[]', 41, '2023-02-05 02:52:33.36+00', '2023-02-05 02:52:33.36+00'),
(42, 'unknown', 'unknown', 'Gojek', '-', '[]', 42, '2023-02-05 04:03:07.053+00', '2023-02-05 04:03:07.053+00'),
(43, 'unknown', 'unknown', 'unknown', '-', '[]', 43, '2023-02-06 13:00:46.41+00', '2023-02-06 13:00:46.41+00'),
(44, 'unknown', 'unknown', 'unknown', '-', '[]', 44, '2023-02-06 14:17:27.064+00', '2023-02-06 14:17:27.064+00'),
(45, 'unknown', 'unknown', 'unknown', '-', '[]', 45, '2023-02-06 14:18:59.093+00', '2023-02-06 14:18:59.093+00'),
(46, 'unknown', 'unknown', 'unknown', '-', '[]', 46, '2023-02-06 14:19:07.653+00', '2023-02-06 14:19:07.653+00'),
(47, 'unknown', 'unknown', 'unknown', '-', '[]', 47, '2023-02-06 14:19:25.183+00', '2023-02-06 14:19:25.183+00'),
(48, 'unknown', 'unknown', 'unknown', '-', '[]', 48, '2023-02-06 14:19:51.593+00', '2023-02-06 14:19:51.593+00'),
(49, 'unknown', 'unknown', 'unknown', '-', '[]', 49, '2023-02-06 14:20:01.255+00', '2023-02-06 14:20:01.255+00'),
(50, 'unknown', 'unknown', 'unknown', '-', '[]', 50, '2023-02-06 14:20:17.644+00', '2023-02-06 14:20:17.644+00'),
(51, 'unknown', 'unknown', 'unknown', '-', '[]', 51, '2023-02-06 14:20:45.765+00', '2023-02-06 14:20:45.765+00'),
(52, 'unknown', 'unknown', 'unknown', '-', '[]', 52, '2023-02-06 14:47:00.11+00', '2023-02-06 14:47:00.11+00'),
(53, 'unknown', 'unknown', 'unknown', '-', '[]', 53, '2023-02-06 15:09:53.551+00', '2023-02-06 15:09:53.551+00'),
(54, 'unknown', 'unknown', 'unknown', '-', '[]', 54, '2023-02-06 15:10:07.979+00', '2023-02-06 15:10:07.979+00'),
(55, 'unknown', 'unknown', 'unknown', '-', '[]', 55, '2023-02-07 09:51:29.542+00', '2023-02-07 09:51:29.542+00'),
(56, 'unknown', 'unknown', 'unknown', '-', '[]', 56, '2023-02-07 12:47:32.451+00', '2023-02-07 12:47:32.451+00'),
(57, 'unknown', 'unknown', 'unknown', '-', '[]', 57, '2023-02-07 13:20:00.721+00', '2023-02-07 13:20:00.721+00');

INSERT INTO "public"."users" ("id", "fullname", "email", "password", "phone_number", "photo_profile", "recruiter_id", "createdAt", "updatedAt") VALUES
(1, 'bilkis', 'kubil09@Gmail.com', '$2a$10$S/d15U3X3WMBr3wVkbN3cObCYKMIo1fd3TRc0.DmYMLbW2zJPqrFi', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-01-31 22:50:17.061+00', '2023-01-31 22:50:17.061+00'),
(2, 'hansip', 'hansip@gmail.com', '$2a$10$CgWfE9ARetAMGbet1Wd5gu54NwpY4qsSDB0IX2LdwWcGU10CN6OW2', '1404554041', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 2, '2023-01-31 23:14:16.654+00', '2023-01-31 23:14:16.654+00'),
(3, 'Fachri Fajar Firmansyah', 'fchfjr@gmail.com', '$2a$10$.qx83Khefi.7Y6kBWFtHT.xJ1PuI.w.AzRK7Y1NzZYmprga/V0yiq', '081288889999', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 3, '2023-02-01 04:18:32.103+00', '2023-02-01 04:18:32.103+00'),
(4, 'tes', 'tes@gmail.com', '$2a$10$kmm73MIw7xF.Z1GaBxhc2O5K7v87L5WqfgnXtUHC7Fvgcx6yl6SAq', '1111111111', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 4, '2023-02-01 04:28:46.589+00', '2023-02-01 04:28:46.589+00'),
(5, 'tes', 'tes2@gmail.com', '$2a$10$tnDgvfO6qypll.bGNynbDO3sOrUL37L6QsErydiG1ssprdiNOyeay', '1111111111', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 5, '2023-02-01 04:31:29.027+00', '2023-02-01 04:31:29.027+00'),
(6, 'Thomas H', 'thomas9@gmail.com', '$2a$10$.jOMiqJpaZTTC7jc.mTQMO6HC.sgxMyc.DuYsRlFfyzIGXwTWc5i6', '081234567890', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 6, '2023-02-01 10:00:40.213+00', '2023-02-01 10:00:40.213+00'),
(7, 'M Restu Alviando', 'restu@gmail.com', '$2a$10$W4a52w9g4Hi6XU.jLumTme9NMHBCdtj6J1Ut/BUfgWWxoOPXa3GDi', '0891111111', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 7, '2023-02-02 04:22:01.05+00', '2023-02-02 04:22:01.05+00'),
(8, 'restu1', 'restu1@gmail.com', '$2a$10$JI2X3wPntajUosnx/4s2..RJYypmx.myZSKFS.3q0xcQIgFoYrl46', '089622221', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 8, '2023-02-02 04:24:26.724+00', '2023-02-02 04:24:26.724+00'),
(9, 'restu2', 'restu2@gmail.com', '$2a$10$S1RuwLM/mdg0Xn.kE5ESau9dyDiWyMg3jqgBjjnR5ZO2cNPC8PVVG', '0897213131', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 9, '2023-02-02 04:27:23.026+00', '2023-02-02 04:27:23.026+00'),
(10, 'Bilkis 2', 'testing@Gmail.com', '$2a$10$LQwFq3i0I0Wha8V3WYzck.gJnEKOfCsBym45uRe5tBc8MRix/I9UC', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-02 05:57:25.523+00', '2023-02-06 13:51:17.596+00'),
(11, 'Testing1', 'testing1@Gmail.com', '$2a$10$rx9L5H6n9oK.thHbAL8EAu7oCqsoJAWneJtJ5b108OINGPqtU8R1u', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 11, '2023-02-02 07:30:47.609+00', '2023-02-02 07:30:47.609+00'),
(12, 'Maulana Ismail', 'maulana123@Gmail.com', '$2a$10$IUidyNCrC6QUhz00fwPcZugRmFtDkVW9ybhNyHjDddaFGs5oAtEqa', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 12, '2023-02-02 07:34:04.125+00', '2023-02-02 07:34:04.125+00'),
(13, 'Mau', 'maulana1234@Gmail.com', '$2a$10$FfE0MW8chmR4rDC2OpwVMOwleMZWHvmR121KtF.Eltegq2VPFmnf2', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 13, '2023-02-02 09:05:42.068+00', '2023-02-02 09:05:42.068+00'),
(14, 'Testing', 'halohalo@Gmail.com', '$2a$10$cMSTV/g6tqU27s2hWDBFxOnAoUBJjB0Q0A98kV.3G90L6.FO6pLae', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 14, '2023-02-02 13:24:26.897+00', '2023-02-02 13:24:26.897+00'),
(15, 'Testing', 'halo123@Gmail.com', '$2a$10$piaP0qvg.hhJMIj/oBnts.seKDORSEaqAF4VgTpm6B46TOkAc9Zi.', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 15, '2023-02-02 15:51:23.678+00', '2023-02-02 15:51:23.678+00'),
(16, 'Testing', 'rizal@gmail.com', '$2a$10$SI.co9V64DiMDAS1EQxwjOEALPBYgArab25CtSwjRhP4a8pWouUIW', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 16, '2023-02-02 17:14:32.376+00', '2023-02-02 17:14:32.376+00'),
(17, 'sijahat', 'sijahat@gmail.com', '$2a$10$.IFS4E.JE5oAswS5T.xeeedW078Ph.aN32JOfVmHQrDixo1KeavMO', '1406789', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 17, '2023-02-02 17:43:37.067+00', '2023-02-02 17:43:37.067+00'),
(18, 'tester', 'tester@gmail.com', '$2a$10$hOhAB8cVdp/SMSSCGEemreFqdMiYUSofF3MTef0SPK3QpGRepJy0.', '735735', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 18, '2023-02-02 17:45:27.651+00', '2023-02-02 17:45:27.651+00'),
(19, 'Maulana Ismail', 'maulana12345@Gmail.com', '$2a$10$.254gIWqKsNPo4euXRhGYOXGXmrJfqS5.N8UU1N.4vJk1eR8uWN.2', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 19, '2023-02-02 23:31:44.441+00', '2023-02-02 23:31:44.441+00'),
(20, 'Maulana Ismail', 'maulana123456@Gmail.com', '$2a$10$G1GIpbzHz4X6c1mQtLLL..ogph34f.sKKAY.xXDtKUO/7oTh3QzJi', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 20, '2023-02-02 23:34:54.613+00', '2023-02-02 23:34:54.613+00'),
(21, 'Maulana Ismail', 'maulanaismail123@Gmail.com', '$2a$10$PQYNtuJNdhRKi2jn5mcaM.S.ZzYNACwbxCt.hS.KNWECrH3SYyGPK', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 21, '2023-02-02 23:52:33.719+00', '2023-02-02 23:52:33.719+00'),
(22, 'Maulana Ismail', 'maulanais123@Gmail.com', '$2a$10$66U.KXtAXmAHH4MX/w117uo/3iElSrcVmnAAQ8LJDg16xMyDimZy6', '85157844289', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 22, '2023-02-02 23:57:06.256+00', '2023-02-02 23:57:06.256+00'),
(23, 'Maulana Ismail', 'maulanaoke123@Gmail.com', '$2a$10$VPxJGu2s/XaTMHgUL4oOE.NTfHClyNsReCX0QtKPw6qGcpR/wqVNG', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 23, '2023-02-03 00:10:29.202+00', '2023-02-03 00:10:29.202+00'),
(24, 'Maulana Ismail', 'maulanaismail3456@gmail.com', '$2a$10$g90sMA92vjVABWBk.OCXbONHyh8OuGeQkToBQ0Wcf08ZHQUwKhYFe', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 24, '2023-02-03 00:36:44.561+00', '2023-02-03 00:36:44.561+00'),
(25, 'Maulana Ismail', 'maulanaismail3411@gmail.com', '$2a$10$O.IC9DvF/E2R1uDVpzg9/OfMfwzUiKwIeumLNuGxs49Ozdir0NMSm', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 25, '2023-02-03 00:46:02.024+00', '2023-02-03 00:46:02.024+00'),
(26, 'Maulana Ismail', 'maulanaismail3412@gmail.com', '$2a$10$0JCj9.piYv770LjHQzyiQuHg.KsH7TswckPMqv5RsURrIui7V8hBW', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 26, '2023-02-03 00:46:25.537+00', '2023-02-03 00:46:25.537+00'),
(27, 'test', 'test@gmail.com', '$2a$10$FrKmYOjbF3iNUSxylvemseTkm1pyAfaIfICLecCdl0Ct0Go6UaumG', '08098765321', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 27, '2023-02-03 01:59:30.021+00', '2023-02-03 01:59:30.021+00'),
(28, 'test regis', 'testregis@gmail.com', '$2a$10$TXZV7yctdPO2PXyWvdFIeeb3/ObU0qy.xjBWXGICsKzaidTRTx.xS', '080987654322', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 28, '2023-02-03 02:04:14.501+00', '2023-02-03 02:04:14.501+00'),
(29, 'Test Regis', 'testregis@Gmail.com', '$2a$10$bxjFQSJSXpcRpxlqgKLmpOxInIUe2O1dIYfQlwimIkhIsauRl9IgG', '08098675432', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 29, '2023-02-03 02:07:46.645+00', '2023-02-03 02:07:46.645+00'),
(30, 'test regis', 'testregist@gmail.com', '$2a$10$Y1eLnrfOy6u.QnPIzPdPbu1fK8KURr3pK8zMaZxGG7oANvGoZ4dVS', '089786576543', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 30, '2023-02-03 02:14:45.875+00', '2023-02-03 02:14:45.875+00'),
(31, 'Fiqri', 'Fiqri@Gmail.com', '$2a$10$O5Lc62rXM67udKlgqP/Wu.8PnAfapUp4RR.6/0rIoIUm93Qkxw1wa', '08963008000', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 31, '2023-02-03 02:41:20.39+00', '2023-02-03 02:41:20.39+00'),
(32, 'halooo', 'halooo123@gmail.com', '$2a$10$eAvwRWN2gCLeMWfFuTFw0u1z3wTUsFMuWA0WUnPBpEZ.gfej89y4q', '008123456789', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 32, '2023-02-03 04:42:16+00', '2023-02-03 04:42:16+00'),
(33, 'Maulana Ismail', 'maulana890@Gmail.com', '$2a$10$t5ccIL8iKvmEBG3R6HpcauGuLpVOOijSZ32pMyKXPBZnDY7j6xRza', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 33, '2023-02-03 06:24:48.76+00', '2023-02-03 06:24:48.76+00'),
(34, 'Maulana Ismail', 'maulana8901@Gmail.com', '$2a$10$ebCSWIImUaUQ.yVuUN.ceuy19dT.X2yJifeZWFt02wAp4X/abIIuq', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 34, '2023-02-03 06:25:18.06+00', '2023-02-03 06:25:18.06+00'),
(35, 'Maulana Ismail', 'maulanaismail3466@gmail.com', '$2a$10$DwDSIktXykvVm982sSMA9e18o8Z24f.OMJ45ce0QWWq6DD5iEpvmu', '85157844289', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 35, '2023-02-03 06:36:52.489+00', '2023-02-03 06:36:52.489+00'),
(36, 'restu alviando', 'restunew@gmail.com', '$2a$10$jOYwIYafBiu6haL.6gzqiO6tVjhdwv0HRHz3mOquQb3LuR7rcg4Qi', '0896121212', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 36, '2023-02-03 06:59:14.984+00', '2023-02-03 06:59:14.984+00'),
(37, 'testerrr', 'testerrr@gmail.com', '$2a$10$jU1nOZqBtDXsR9lfYjAQ9uAjfysc2tm1J2Rzs/ThFXrq.LVKSpYp.', '123321312312', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 37, '2023-02-03 07:14:48.125+00', '2023-02-03 07:14:48.125+00'),
(38, 'halohalo', 'halohalo123@gmail.com', '$2a$10$Vmyi5L/PRi0rKGYBOJl9u.mx9MT.337WiMdx24eDvykVyRRrI7DjO', '08123454567', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 38, '2023-02-03 07:41:36.482+00', '2023-02-03 07:41:36.482+00'),
(39, 'Testing', 'recruiter@Gmail.com', '$2a$10$S4nYBFoMBeXsTAYhR7iqXOAn6DrleQzVs0Gto0bHx4y1o1i3bmDCe', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 39, '2023-02-03 09:24:09.352+00', '2023-02-03 09:24:09.352+00'),
(40, 'Antonio N', 'antonion@gmail.com', '$2a$10$t4vldFGIsjARF54vwq/69OcFHujMUH4OUiR3zMC/8Wu5V4lrwD/8O', '081324354657', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 40, '2023-02-04 15:09:09.902+00', '2023-02-04 15:09:09.902+00'),
(41, 'Sasa', 'sasa@gmail.com', '$2a$10$l02mHwEwLkxZy14JakndvuubWCJIWQlR82FIHIP21m7S8BslKaJjK', '085814725836', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 41, '2023-02-05 02:52:33.215+00', '2023-02-05 02:52:33.215+00'),
(42, 'Gustian B', 'gustianb@gmail.com', '$2a$10$M13rz/k3NxeVkNXA7JxJM.XV37uujfMScvptZIHqHw9eA/H5COgfK', '081237894560', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 42, '2023-02-05 04:03:06.909+00', '2023-02-05 04:03:06.909+00'),
(43, 'Testing', 'customer@Gmail.com', '$2a$10$672Gm8E109ALuPixFayCbOuTsKqjC5rckJmxGJ1avHg/AXDkUG8yS', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 13:00:46.245+00', '2023-02-06 13:00:46.245+00'),
(44, 'Jonan', 'jonan@Gmail.com', '$2a$10$PyJst3RlRYCbJq5vbVO5d.mNaVwjpJe5s0jP/Lan3Q8dSUXK7e6La', '189630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 14:17:26.915+00', '2023-02-06 14:17:26.915+00'),
(45, 'Jono', 'jono@Gmail.com', '$2a$10$zPg8b4mrI2S6HqeENSrrlOds/RlBYeXgI..oOBZvNRjyKopBWnx5e', '199630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 14:18:58.942+00', '2023-02-06 14:18:58.942+00'),
(46, 'Joni', 'joni@Gmail.com', '$2a$10$p7a3VnwXKMWp0Zg3nHY9Yu9oqYz2oOPqSSA9vK.BNWQcySNEb5b52', '199630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 14:19:07.511+00', '2023-02-06 14:19:07.511+00'),
(47, 'agus', 'agus@Gmail.com', '$2a$10$AbYT0gHRpZSBsbQx2EL3HORv0ka4ytDDDgElyV44rifAKTdrElgaa', '199930080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 14:19:25.04+00', '2023-02-06 14:19:25.04+00'),
(48, 'parmin', 'parmin@Gmail.com', '$2a$10$Nrffwc49F9HkN6mzpjYSAupABTQnn5JHeJTYBqY5CP.TkHiJ7hwQ.', '199940080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 14:19:51.441+00', '2023-02-06 14:19:51.441+00'),
(49, 'parman', 'parman@Gmail.com', '$2a$10$vtumNm/PcP12gkDywWubK.ZEGC8hqzafWtSH77bCSNr4as8zV1HcW', '199950080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 14:20:01.113+00', '2023-02-06 14:20:01.113+00'),
(50, 'ismail bolong', 'ismailbolong@Gmail.com', '$2a$10$K9uKInD6rYaPjQfGLeb46O0WE1Vnjf5H38.5ELw6F.bR0GAhwTZ6a', '199950080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 14:20:17.502+00', '2023-02-06 14:20:17.502+00'),
(51, 'airlangga', 'airlangga@Gmail.com', '$2a$10$QTNEqmPe0n39PUCfVM0Rdek/EHuEdpA612OB/r3d9h28FUjj.J/jS', '199960080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 14:20:45.615+00', '2023-02-06 14:20:45.615+00'),
(52, 'tono', 'tono@Gmail.com', '$2a$10$uvjHQKIghaRu/dGyHDiEXuy7LJ7hoFlgLgGKoPh5R7k0QxG9cjY7.', '089631080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 14:46:59.961+00', '2023-02-06 14:46:59.961+00'),
(53, 'badru', 'badru@Gmail.com', '$2a$10$k.ARpETsuzHIo4MfBAtEiOI.N0w4MmJu6jgX/96VI8dM/tp42E/sW', '089632080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 15:09:53.402+00', '2023-02-06 15:09:53.402+00'),
(54, 'iwan', 'iwan@Gmail.com', '$2a$10$d.5ayMj.lQNUE1kfcGw5Gufc1muYhF9ntav9mJlTTTfxeIIxDW0KK', '089633080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-06 15:10:07.827+00', '2023-02-06 15:10:07.827+00'),
(55, 'rachmad', 'rachmad@gmail.com', '$2a$10$oN8E9TBdJ1jb7efebrv17.gBwev7jUBAfK4KoowwyTv4h2OlsRb5y', '0888888888', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-07 09:51:29.39+00', '2023-02-07 09:51:29.39+00'),
(56, 'Lois Lane', 'loislane@Gmail.com', '$2a$10$jjxc8flPifICDnrlcIqABeoKSJXtF.sNb1gDt/XM41QkCO5bVJjFu', '081234568790', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-07 12:47:32.301+00', '2023-02-07 12:47:32.301+00'),
(57, 'Yayan', 'yayan1@gmail.com', '$2a$10$0lWoPKEzK3e3DnHNUYMiGeDn5nhyt..RQhti1hR1k2A9SccXbK01a', '089876543210', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-07 13:20:00.564+00', '2023-02-07 13:20:00.564+00');

