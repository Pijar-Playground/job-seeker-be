-- -------------------------------------------------------------
-- TablePlus 5.3.5(494)
--
-- https://tableplus.com/
--
-- Database: enxcqqct
-- Generation Time: 2023-03-21 12:58:01.5060
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
    "is_read" bool DEFAULT false,
    PRIMARY KEY ("id")
);



-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS portfolios_id_seq1;

-- Table Definition
CREATE TABLE "public"."portfolios" (
    "id" int4 NOT NULL DEFAULT nextval('portfolios_id_seq1'::regclass),
    "name" varchar(255),
    "photo" text,
    "link" text,
    "type" varchar(255),
    "user_id" int4,
    "createdAt" timestamptz NOT NULL,
    "updatedAt" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS recruiters_id_seq;

-- Table Definition
CREATE TABLE "public"."recruiters" (
    "id" int4 NOT NULL DEFAULT nextval('recruiters_id_seq'::regclass),
    "company" varchar(255),
    "position" varchar(255),
    "createdAt" timestamptz NOT NULL,
    "updatedAt" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."SequelizeMeta" (
    "name" varchar(255) NOT NULL,
    PRIMARY KEY ("name")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS user_details_id_seq;

-- Table Definition
CREATE TABLE "public"."user_details" (
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

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS work_experiences_id_seq;

-- Table Definition
CREATE TABLE "public"."work_experiences" (
    "id" int4 NOT NULL DEFAULT nextval('work_experiences_id_seq'::regclass),
    "position" varchar(255),
    "company" varchar(255),
    "date" varchar(255),
    "description" text,
    "user_id" int4,
    "logo" varchar(255) DEFAULT 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png'::character varying,
    "createdAt" timestamptz NOT NULL,
    "updatedAt" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."hire_histories" ("id", "user_id", "description", "phone_number", "purpose", "fullname", "email", "createdAt", "updatedAt", "recruiter_id", "is_read") VALUES
(1, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:25:59.212+00', '2023-03-14 04:32:56.275+00', 15, 't'),
(2, 1, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:37:26.696+00', '2023-02-08 21:04:48.728+00', 12, 't'),
(3, 1, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:37:59.172+00', '2023-02-08 14:37:59.172+00', 12, 'f'),
(4, 12, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:38:45.666+00', '2023-02-08 14:38:45.666+00', 12, 'f'),
(5, 7, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:47:32.677+00', '2023-03-14 04:25:13.807+00', 7, 't'),
(6, 7, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:50:39.473+00', '2023-03-14 04:25:20.194+00', 7, 't'),
(7, 7, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:55:57.028+00', '2023-03-14 04:25:22.79+00', 7, 't'),
(8, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:27:05.879+00', '2023-02-08 15:27:05.879+00', 10, 'f'),
(9, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:28:21.868+00', '2023-02-08 15:28:21.868+00', 10, 'f'),
(10, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:29:30.656+00', '2023-03-17 06:52:31.655+00', 10, 't'),
(11, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:35:49.702+00', '2023-03-14 04:27:24.974+00', 10, 't'),
(12, 10, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:37:08.407+00', '2023-03-18 19:15:25.058+00', 10, 't'),
(13, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:39:37.895+00', '2023-03-17 06:53:58.944+00', 10, 't'),
(14, 10, 'lagi apa ?', '089630080123', 'manggil aja', 'test', 'test@Gmail.com', '2023-02-08 15:40:19.097+00', '2023-03-18 19:17:44.879+00', 10, 't'),
(15, 7, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 00:58:58.483+00', '2023-03-17 07:46:25.075+00', 7, 't'),
(16, 7, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 01:01:11.065+00', '2023-02-09 01:01:11.065+00', 7, 'f'),
(17, 12, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 01:01:50.608+00', '2023-02-09 01:02:04.741+00', 7, 't'),
(18, 7, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 01:05:23.32+00', '2023-02-09 04:04:47.171+00', 7, 't'),
(19, 10, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 01:05:52.923+00', '2023-03-18 19:17:39.686+00', 7, 't'),
(20, 12, 'hello test', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 03:21:56.082+00', '2023-02-09 03:21:56.082+00', 7, 'f'),
(21, 17, 'hello test', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 03:26:27.356+00', '2023-02-09 03:26:27.356+00', 7, 'f'),
(22, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:03:18.036+00', '2023-02-09 04:03:25.967+00', 10, 't'),
(23, 7, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:03:35.395+00', '2023-02-09 04:03:35.395+00', 5, 'f'),
(24, 10, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:03:57.327+00', '2023-03-18 16:23:15.211+00', 10, 't'),
(25, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:04:32.5+00', '2023-02-09 04:09:09.239+00', 10, 't'),
(26, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:05:54.271+00', '2023-02-09 04:06:34.646+00', 10, 't'),
(27, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:07:12.493+00', '2023-02-09 04:07:19.877+00', 10, 't'),
(28, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:08:06.467+00', '2023-03-14 04:32:16.827+00', 8, 't'),
(29, 10, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:12:57.889+00', '2023-02-09 04:13:11.13+00', 10, 't'),
(30, 10, 'hello test aja yaaaa', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:13:35.081+00', '2023-02-09 04:16:09.397+00', 10, 't'),
(31, 5, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:21:42.586+00', '2023-02-09 04:21:42.586+00', 13, 'f'),
(32, 5, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:22:11.384+00', '2023-02-09 04:22:11.384+00', 13, 'f'),
(33, 5, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:22:16.344+00', '2023-02-09 04:22:16.344+00', 13, 'f'),
(34, 10, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:22:21.419+00', '2023-03-18 17:22:26.864+00', 13, 't'),
(35, 18, 'desc 1435545343', '123131231', 'Projek', 'project1', 'project1@mail.com', '2023-02-09 08:43:48.795+00', '2023-02-09 08:43:48.795+00', 13, 'f'),
(36, 18, 'edasdadadasdawdadw', '21213123312', 'Projek', 'dwadasd', 'wadads@mail.bom', '2023-02-09 08:45:25.48+00', '2023-02-09 08:45:25.48+00', 13, 'f'),
(37, 18, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 08:46:16.914+00', '2023-02-09 08:46:16.914+00', 5, 'f'),
(38, 5, 'desc 1 pertama', '21332131', 'Projek', 'test1', 'test1@gmail.con', '2023-02-09 08:49:36.921+00', '2023-02-09 08:49:36.921+00', 13, 'f'),
(39, 10, 'deskripsi deskripsi', '07832187', 'Projek', 'recruiter 11', 'recruiter11@gmail.com', '2023-02-10 02:47:10.927+00', '2023-03-18 17:20:10.492+00', 23, 't'),
(40, 5, 'deskripsi deskripsi', '0799798', 'Projek', 'recruiter restu 1', 'recrestu@gmail.com', '2023-02-10 02:50:44+00', '2023-02-10 02:50:44+00', 13, 'f'),
(41, 32, 'project pembuatan aplikasi ', '0999999999', 'Project', 'martin Tono', 'martintono@gmail.com', '2023-03-10 16:06:56.932+00', '2023-03-10 16:06:56.932+00', 33, 'f'),
(42, 32, 'project pembuatan aplikasi ', '0999999999', 'Project', 'martin Tono', 'martintono@gmail.com', '2023-03-10 16:07:47.419+00', '2023-03-10 16:07:47.419+00', 33, 'f'),
(43, 32, 'project pembuatan aplikasi ', '0999999999', 'Project', 'martin Tono', 'martintono@gmail.com', '2023-03-10 16:08:05.277+00', '2023-03-10 16:08:05.277+00', 33, 'f'),
(44, 32, 'project pembuatan aplikasi ', '0999999999', 'Project', 'martin Tono', 'martintono@gmail.com', '2023-03-10 16:08:22.913+00', '2023-03-10 16:08:22.913+00', 33, 'f'),
(45, 32, 'project pembuatan aplikasi ', '0999999999', 'Project', 'martin Tono', 'martintono@gmail.com', '2023-03-10 16:13:23.949+00', '2023-03-10 16:13:23.949+00', 33, 'f'),
(46, 32, 'project pembuatan aplikasi ', '0999999999', 'Project', 'martin Tono', 'martintono@gmail.com', '2023-03-10 16:13:30.13+00', '2023-03-10 16:13:30.13+00', 33, 'f'),
(47, 32, 'project pembuatan aplikasi ', '0999999999', 'Project', 'martin Tono', 'martintono@gmail.com', '2023-03-10 16:14:03.952+00', '2023-03-10 16:14:03.952+00', 33, 'f'),
(48, 32, 'project pembuatan aplikasi ', '0999999999', 'Project', 'martin Tono', 'martintono@gmail.com', '2023-03-10 16:14:36.197+00', '2023-03-10 16:14:36.197+00', 33, 'f'),
(49, 32, 'pembuatan website marketplace', '0888888888', 'Project', 'restu', 'restu@gmail.com', '2023-03-12 16:49:36.644+00', '2023-03-12 16:49:36.644+00', 33, 'f'),
(50, 34, 'Halo kak, kami sedang ada lowongan untuk kakak, jika berminat mohon hubungi kami segera ya kak terima kasih', '08944848988', 'Cooperation', 'Riyadh', 'riyadh@gmail.com', '2023-03-13 15:55:55.736+00', '2023-03-14 04:33:39.35+00', 34, 't'),
(51, 13, 'xxxxxxxxxxx', '123123213', 'Other purposes', 'Hansip', 'hansip@gmail.com', '2023-03-14 18:09:35.47+00', '2023-03-14 18:09:35.47+00', 8, 'f'),
(52, 13, 'zxzzxzxzxzxzzx', '123123213123', 'Projects', 'Fachri Fajar Firmansyah', 'fachri.fajar@gmail.com', '2023-03-14 18:13:31.354+00', '2023-03-14 18:13:31.354+00', 8, 'f'),
(53, 34, 'Halo, saya punya duit', '44819849819', 'Project', 'Robert', 'tes@gmail.com', '2023-03-15 08:20:10.445+00', '2023-03-15 08:20:10.445+00', 34, 'f'),
(54, 13, 'kerja yuks', '087759744334', 'Offer', 'hansip', 'hansip@gmail.com', '2023-03-17 06:51:31.834+00', '2023-03-17 06:51:31.834+00', 8, 'f'),
(55, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-03-17 06:52:17.664+00', '2023-03-17 06:52:24.151+00', 10, 't'),
(56, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-03-17 06:57:46.145+00', '2023-03-17 06:57:46.145+00', 10, 'f'),
(57, 13, 'kerja yuk dek', '12345678', 'Offer', 'hansip', 'hansip@gmail.com', '2023-03-18 17:25:07.762+00', '2023-03-18 17:25:07.762+00', 8, 'f'),
(58, 15, 'kerja yuk dek', '12345678', 'Offer', 'hansip', 'hansip@gmail.com', '2023-03-18 17:29:33.041+00', '2023-03-18 17:29:33.041+00', 8, 'f'),
(59, 15, 'kerjo yukk', '089630080123', 'Offer', 'hansip', 'hansip@gmail.com', '2023-03-18 17:33:12.253+00', '2023-03-18 17:33:12.253+00', 10, 'f'),
(60, 15, 'kerjo yukk', '089630080123', 'Offer', 'hansip', 'hansip@gmail.com', '2023-03-18 17:33:53.369+00', '2023-03-18 17:33:53.369+00', 8, 'f'),
(61, 10, 'good morning, based on your profile we are amazed with your skills and job experience. pls contact us!ontact u', '123123123123', 'Offer', 'hansip', 'hansip@gmail.com', '2023-03-18 17:38:11.228+00', '2023-03-18 17:51:58.78+00', 8, 't'),
(62, 10, 'saw your profile and amazed with your superb skills and experienced. pls dont hesitate to contact me. big thanks!', '1231232131', 'Offer', 'Ilham Trisna Aji', 'ilhamtrisna@gojek.com', '2023-03-18 18:05:58.154+00', '2023-03-18 19:20:23.76+00', 8, 't'),
(63, 10, 'good day sir, im interested with your skills. please contact me. thanks!', '123123123', 'Projects', 'rojikin', 'rojikin@accenture.com', '2023-03-18 18:30:03.684+00', '2023-03-18 18:30:03.684+00', 8, 'f'),
(64, 32, 'project terbaru', '00793831289', 'Projek', 'john wijaya', 'john@gmail.com', '2023-03-19 08:12:26.223+00', '2023-03-19 08:12:26.223+00', 43, 'f'),
(65, 34, 'namenamenamename', '08123456789101', 'Project', 'name', 'name@gmail.com', '2023-03-19 09:31:07.992+00', '2023-03-19 09:31:07.992+00', 34, 'f'),
(66, 34, 'Halo kak, saya ingin menawarkan lowongan ke Kakak, apakah kakak bersedia?', '069634936946', 'Project', 'Robert', 'robertdj@gmail.com', '2023-03-20 09:49:38.098+00', '2023-03-20 09:49:38.098+00', 34, 'f'),
(67, 28, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-03-20 16:06:11.281+00', '2023-03-20 16:06:11.281+00', 28, 'f'),
(68, 34, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-03-20 16:09:30.059+00', '2023-03-20 16:09:30.059+00', 28, 'f'),
(69, 44, 'Hallo ngetest aja', '089630080321', 'Projects', 'billy', 'billy@Gmail.com', '2023-03-21 05:19:47.193+00', '2023-03-21 05:19:47.193+00', 45, 'f'),
(70, 42, 'Halo, saya punya lamaran', '012931203120', 'Project', 'Riyadh', 'riyadh@gmail.com', '2023-03-21 05:42:54.718+00', '2023-03-21 05:42:54.718+00', 34, 'f'),
(71, 42, 'Halo, saya punya lamaran', '09539532922', 'Project', 'Yurino', 'yurino@gmail.com', '2023-03-21 05:49:56.208+00', '2023-03-21 05:49:56.208+00', 46, 'f');

INSERT INTO "public"."portfolios" ("id", "name", "photo", "link", "type", "user_id", "createdAt", "updatedAt") VALUES
(1, 'Food App Recipe', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'test', 13, '2023-02-08 14:04:22.658+00', '2023-02-08 14:04:22.658+00'),
(2, 'Food App Recipe', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'test', 13, '2023-02-08 14:05:56.013+00', '2023-02-08 14:05:56.013+00'),
(3, 'Food App Recipe', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'test', 15, '2023-02-08 14:06:36.211+00', '2023-02-08 14:06:36.211+00'),
(4, 'Food App Recipe', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'test', 15, '2023-02-08 14:14:46.372+00', '2023-02-08 14:14:46.372+00'),
(5, 'Food App Recipe', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'test', 15, '2023-02-08 14:17:09.599+00', '2023-02-08 14:17:09.599+00'),
(6, 'Test', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'mobile', 12, '2023-02-08 14:20:12.084+00', '2023-02-08 14:20:12.084+00'),
(7, 'Test', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'mobile', 12, '2023-02-08 14:28:25.499+00', '2023-02-08 14:28:25.499+00'),
(8, 'Test', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'mobile', 12, '2023-02-08 14:28:40.038+00', '2023-02-08 14:28:40.038+00'),
(9, 'Test', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'mobile', 7, '2023-02-08 14:28:59.526+00', '2023-02-08 14:28:59.526+00'),
(10, 'Food App Recipe', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'test', 10, '2023-02-08 14:31:30.401+00', '2023-02-08 14:31:30.401+00'),
(11, 'Netflix Super Clone', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'test', 10, '2023-02-08 14:38:36.096+00', '2023-02-08 14:38:36.096+00'),
(12, 'Fishye', 'https://png.pngtree.com/png-clipart/20200224/original/pngtree-fish-logo-vector-design-icon-png-image_5229807.jpg', 'https://github.com/Rachmad22/jobhire', 'mobile', 32, '2023-03-12 12:42:17.535+00', '2023-03-12 12:42:17.535+00'),
(13, 'YTM', 'https://www.shutterstock.com/image-vector/play-botton-concept-logo-listening-600w-542336587.jpg', 'www.github.com/youtube-music-project', 'Website', 28, '2023-03-13 15:07:36.719+00', '2023-03-13 15:07:36.719+00'),
(14, 'netflix clone', 'https://jlowe-n.github.io/img/portfolio-01-netflix-clone.png', 'http://github', 'Web App', 8, '2023-03-14 14:56:45.828+00', '2023-03-14 14:56:45.828+00'),
(15, 'Rest API Snippet', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWcmGvkbtrPGYT2BJn0wrsYw6wdOHuBYuSBg&usqp=CAU', 'https://github.com/RestAPISnippet', 'Web App', 10, '2023-03-14 15:03:02.424+00', '2023-03-14 15:03:02.424+00'),
(16, 'belanja app', 'belanja app', '-', 'Website', 28, '2023-03-19 09:28:24.232+00', '2023-03-19 09:28:24.232+00'),
(17, 'Fishye', 'https://png.pngtree.com/png-clipart/20200224/original/pngtree-fish-logo-vector-design-icon-png-image_5229807.jpg', 'https://github.com/Rachmad22/jobhire', 'desktop', 32, '2023-03-20 16:36:32.228+00', '2023-03-20 16:36:32.228+00');

INSERT INTO "public"."recruiters" ("id", "company", "position", "createdAt", "updatedAt") VALUES
(13, 'Pijar', 'Technical Trainer', '2023-02-08 07:27:43.541+00', '2023-02-08 07:27:43.541+00'),
(14, 'PT A', 'Engineer', '2023-02-08 07:29:29.357+00', '2023-02-08 07:29:29.357+00'),
(15, 'Pijar', 'Talent', '2023-02-08 07:35:21.912+00', '2023-02-08 07:35:21.912+00'),
(16, 'pos', 'everywhere', '2023-02-08 12:02:34.315+00', '2023-02-08 12:02:34.315+00'),
(17, 'Telkom', 'Trainer', '2023-02-08 13:36:21.932+00', '2023-02-08 13:36:21.932+00'),
(18, 'Pijar', 'Technical Trainer', '2023-02-08 14:27:32.642+00', '2023-02-08 14:27:32.642+00'),
(19, 'traveloka', 'web developer', '2023-02-08 19:47:58.564+00', '2023-02-08 19:47:58.564+00'),
(20, 'Pijar', 'Test', '2023-02-09 06:05:04.863+00', '2023-02-09 06:05:04.863+00'),
(21, 'Pijar', 'Technical Trainer', '2023-02-09 06:58:27.885+00', '2023-02-09 06:58:27.885+00'),
(22, 'Pijar', 'Programmer', '2023-02-10 02:44:12.012+00', '2023-02-10 02:44:12.012+00'),
(23, 'Oscorp', 'Player', '2023-02-10 03:09:00.03+00', '2023-02-10 03:09:00.03+00'),
(24, 'Maspoin', 'Technician', '2023-03-09 15:25:07.309+00', '2023-03-09 15:25:07.309+00'),
(25, 'PT Company Tbk ', 'staff', '2023-03-10 14:28:54.869+00', '2023-03-10 14:28:54.869+00'),
(26, 'Bayern', 'Junior Developer', '2023-03-12 11:30:40.843+00', '2023-03-12 11:30:40.843+00'),
(27, 'test', 'test', '2023-03-12 16:30:00.637+00', '2023-03-12 16:30:00.637+00'),
(28, 'test', 'test', '2023-03-12 16:36:42.201+00', '2023-03-12 16:36:42.201+00'),
(29, 'test', 'test', '2023-03-12 16:43:40.104+00', '2023-03-12 16:43:40.104+00'),
(30, 'test', 'test', '2023-03-12 16:48:39.945+00', '2023-03-12 16:48:39.945+00'),
(31, 'PT SEMUA BERKAH', 'CTO', '2023-03-19 02:29:49.852+00', '2023-03-19 02:29:49.852+00'),
(32, 'pijar', 'Trainer', '2023-03-21 05:18:52.67+00', '2023-03-21 05:18:52.67+00'),
(33, 'GPX', 'Manager', '2023-03-21 05:48:13.863+00', '2023-03-21 05:48:13.863+00');

INSERT INTO "public"."SequelizeMeta" ("name") VALUES
('20210813074431-create-users.js'),
('20230130175159-create-recruiter.js'),
('20230131204357-create-hire-list.js'),
('20230131204433-create-user-detail.js'),
('20230202062716-create-hire-history.js'),
('20230207160021-create-portfolio.js'),
('20230207163648-create-work-experience.js');

INSERT INTO "public"."user_details" ("id", "job", "domicile", "company", "description", "skills", "user_id", "createdAt", "updatedAt") VALUES
(1, 'unknown', 'unknown', 'Pijar', '-', '[]', 6, '2023-02-08 07:27:43.789+00', '2023-02-08 07:27:43.789+00'),
(2, 'unknown', 'unknown', 'unknown', '-', '[]', 7, '2023-02-08 07:28:19.294+00', '2023-02-08 07:28:19.294+00'),
(3, 'unknown', 'unknown', 'PT A', '-', '[]', 8, '2023-02-08 07:29:29.651+00', '2023-02-08 07:29:29.651+00'),
(4, 'unknown', 'unknown', 'Pijar', '-', '[]', 9, '2023-02-08 07:35:22.201+00', '2023-02-08 07:35:22.201+00'),
(5, 'unknown', 'unknown', 'unknown', '-', '["docker","php","javascript","laravel","react js"]', 10, '2023-02-08 07:36:06.289+00', '2023-03-20 08:05:22.643+00'),
(6, 'unknown', 'unknown', 'unknown', '-', '["Javascript","PHP"]', 11, '2023-02-08 07:58:20.484+00', '2023-02-08 07:59:09.01+00'),
(7, 'unknown', 'unknown', 'unknown', '-', '["React","React Native","PHP"]', 12, '2023-02-08 07:59:42.679+00', '2023-02-08 08:35:44.847+00'),
(8, 'Frontend Developer', 'Papua New Guinea', 'Banten', 'A Specialist whom keen in Web Developer', '["Django","Flask"]', 13, '2023-02-08 12:02:34.62+00', '2023-03-14 14:11:48.913+00'),
(9, 'unknown', 'unknown', 'Telkom', '-', '[]', 14, '2023-02-08 13:36:22.222+00', '2023-02-08 13:36:22.222+00'),
(10, 'Frontend Developer', 'Papua', 'Remote', 'Professional Web Dev who keen into Tech', '["Vue","Angular","React","Flutter"]', 15, '2023-02-08 14:05:22.448+00', '2023-03-20 13:11:46.27+00'),
(11, 'unknown', 'unknown', 'Pijar', '-', '[]', 16, '2023-02-08 14:27:32.933+00', '2023-02-08 14:27:32.933+00'),
(12, 'unknown', 'unknown', 'unknown', '-', '[]', 17, '2023-02-08 14:52:06.832+00', '2023-02-08 14:52:06.832+00'),
(13, 'unknown', 'unknown', 'traveloka', '-', '[]', 18, '2023-02-08 19:47:58.896+00', '2023-02-08 19:47:58.896+00'),
(14, 'unknown', 'unknown', 'Pijar', '-', '[]', 19, '2023-02-09 06:05:05.166+00', '2023-02-09 06:05:05.166+00'),
(15, 'unknown', 'unknown', 'Pijar', '-', '[]', 20, '2023-02-09 06:58:28.188+00', '2023-02-09 06:58:28.188+00'),
(16, 'unknown', 'unknown', 'unknown', '-', '["React","C++","PHP"]', 21, '2023-02-09 14:23:14.932+00', '2023-02-09 15:00:04.867+00'),
(17, 'Fullstack Developer', 'Bogor', 'Grab', 'Saya adalah fullstack developer, saya punya pengalaman kerja 2 tahun di Grab Indonesia', '["Dart","Java","Javascript","PHP"]', 22, '2023-02-10 00:59:02.1+00', '2023-02-10 03:34:02.512+00'),
(18, 'unknown', 'unknown', 'unknown', '-', '[]', 23, '2023-02-10 01:22:07.972+00', '2023-02-10 01:22:07.972+00'),
(19, 'unknown', 'unknown', 'unknown', '-', '[]', 24, '2023-02-10 01:25:32.711+00', '2023-02-10 01:25:32.711+00'),
(20, 'unknown', 'unknown', 'unknown', '-', '[]', 25, '2023-02-10 02:16:51.084+00', '2023-02-10 02:16:51.084+00'),
(21, 'unknown', 'unknown', 'unknown', '-', '[]', 26, '2023-02-10 02:17:25.299+00', '2023-02-10 02:17:25.299+00'),
(22, 'unknown', 'unknown', 'unknown', '-', '[]', 27, '2023-02-10 02:34:14.986+00', '2023-02-10 02:34:14.986+00'),
(23, 'unknown', 'unknown', 'Pijar', '-', '[]', 28, '2023-02-10 02:44:12.312+00', '2023-02-10 02:44:12.312+00'),
(24, 'unknown', 'unknown', 'unknown', '-', '[]', 29, '2023-02-10 02:48:11.052+00', '2023-02-10 02:48:11.052+00'),
(25, 'unknown', 'unknown', 'unknown', '-', '[]', 30, '2023-02-10 03:05:17.871+00', '2023-02-10 03:05:17.871+00'),
(26, 'unknown', 'unknown', 'Oscorp', '-', '[]', 31, '2023-02-10 03:09:00.316+00', '2023-02-10 03:09:00.316+00'),
(27, 'unknown', 'unknown', 'unknown', '-', '[]', 32, '2023-02-10 03:10:14.087+00', '2023-02-10 03:10:14.087+00'),
(28, 'Fullstack Developer', 'Depok', 'Maxim', 'Saya merupakan developer', '["Next JS","Express JS","Node JS"]', 33, '2023-02-10 03:13:37.059+00', '2023-03-13 14:12:11.766+00'),
(29, 'unknown', 'unknown', 'unknown', '-', '[]', 34, '2023-02-10 03:36:19.123+00', '2023-02-10 03:36:19.123+00'),
(30, 'unknown', 'unknown', 'unknown', '-', '[]', 35, '2023-02-10 20:04:46.2+00', '2023-02-10 20:04:46.2+00'),
(31, 'unknown', 'unknown', 'Maspoin', '-', '[]', 36, '2023-03-09 15:25:07.615+00', '2023-03-09 15:25:07.615+00'),
(32, 'Software Engineer', 'Malang, Jawa Timur', 'PT. New Dreams Tbk', 'Saya seorang engineer yang sangat cerdas', '["Javascript","PHP"]', 37, '2023-03-10 07:21:14.659+00', '2023-03-12 16:46:41.892+00'),
(33, 'Software Engineer', 'Jayapura, Papua', 'PT Company Tbk ', 'Saya seorang programmer handal yang telah menjuarai olimpiade ', '[]', 38, '2023-03-10 14:28:55.182+00', '2023-03-10 22:52:46.459+00'),
(34, 'unknown', 'Moskov, Russia', 'Munich', 'This is a recruiter account, no description', '[]', 39, '2023-03-12 11:30:41.137+00', '2023-03-14 10:31:49.764+00'),
(35, 'unknown', 'unknown', 'unknown', '-', '[]', 40, '2023-03-12 14:28:06.002+00', '2023-03-12 14:28:06.002+00'),
(36, 'unknown', 'unknown', 'unknown', '-', '[]', 41, '2023-03-12 16:03:15.914+00', '2023-03-12 16:03:15.914+00'),
(37, 'unknown', 'unknown', 'unknown', '-', '[]', 42, '2023-03-12 16:23:56.423+00', '2023-03-12 16:23:56.423+00'),
(38, 'unknown', 'unknown', 'test', '-', '[]', 43, '2023-03-12 16:30:00.93+00', '2023-03-12 16:30:00.93+00'),
(39, 'unknown', 'unknown', 'test', '-', '[]', 44, '2023-03-12 16:36:42.487+00', '2023-03-12 16:36:42.487+00'),
(40, 'unknown', 'unknown', 'test', '-', '[]', 45, '2023-03-12 16:43:40.39+00', '2023-03-12 16:43:40.39+00'),
(41, 'unknown', 'unknown', 'test', '-', '[]', 46, '2023-03-12 16:48:40.234+00', '2023-03-12 16:48:40.234+00'),
(42, 'frontend developer', 'bekasi, jawa barat', 'cosmos', 'saya merupakan frontend developer Golang dan React JS.', '[]', 47, '2023-03-13 08:15:40.059+00', '2023-03-13 08:41:39.935+00'),
(43, 'unknown', 'unknown', 'PT SEMUA BERKAH', '-', '[]', 48, '2023-03-19 02:29:50.162+00', '2023-03-19 02:29:50.162+00'),
(44, 'unknown', 'unknown', 'unknown', '-', '[]', 49, '2023-03-19 10:04:52.239+00', '2023-03-19 10:04:52.239+00'),
(45, 'unknown', 'unknown', 'pijar', '-', '[]', 50, '2023-03-21 05:18:52.975+00', '2023-03-21 05:18:52.975+00'),
(46, 'unknown', 'unknown', 'GPX', '-', '[]', 51, '2023-03-21 05:48:14.155+00', '2023-03-21 05:48:14.155+00');

INSERT INTO "public"."users" ("id", "fullname", "email", "password", "phone_number", "photo_profile", "recruiter_id", "createdAt", "updatedAt") VALUES
(6, 'Testing', 'recruiter07@Gmail.com', '$2a$10$JnXkZDLdGV5f1AvaMMCmqOFX4VkIVanSb1mBrzo4dJNmGX1kYAHCS', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 13, '2023-02-08 07:27:43.663+00', '2023-02-08 07:27:43.663+00'),
(7, 'roman', 'roman@gmail.com', '$2a$10$IW8chzivkI2R/jflO6b.yOw5o8IsmACMREl4QSsA7eGiN.FZkN/K6', '0888888888', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 07:28:19.133+00', '2023-02-08 07:28:19.133+00'),
(8, 'roman', 'roman1@gmail.com', '$2a$10$IkKliSqNxBGVyEUr8iKUv.27a8DvPVNQgtprsGRQ.IwEJerJBqTOm', '08888888888', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 14, '2023-02-08 07:29:29.509+00', '2023-02-08 07:29:29.509+00'),
(9, 'mail', 'mail@mail.com', '$2a$10$5ZaYLJSCSvxERlp0LZJuUuza78wlWuJm3aiTE01/5ZoLtBKePgSi6', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 15, '2023-02-08 07:35:22.058+00', '2023-02-08 07:35:22.058+00'),
(10, 'Jarjit', 'jarjit@gmail.com', '$2a$10$YiEfVDtBaLhYDQRcsZiDseKi5l2oHBx/so9nxsYuunqQ2hzOG6xrq', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 07:36:06.146+00', '2023-02-08 07:36:06.146+00'),
(11, 'Bilkis Ismail', 'customer@Gmail.com', '$2a$10$YTg.oqCawKjRbyPdg/W6neIkrmSWenIQXvTjYN679lfQpp8y6NqgK', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 07:58:20.334+00', '2023-02-08 07:58:20.334+00'),
(12, 'Ean', 'ean@Gmail.com', '$2a$10$bdLPc1uiii4C/aKgGWl.DuapjiYSi318TqEEWf7vaBEaDR6Q7cxym', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 07:59:42.536+00', '2023-02-08 07:59:42.536+00'),
(13, 'Slamet Supriyadi', 'hansip@gmail.com', '$2a$10$Is4cRIA4OZVlRk.cR9uHV.zYstJ09xFb0xYVTWBx9.LyGHvLrPmjO', '123456789', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 16, '2023-02-08 12:02:34.477+00', '2023-03-14 11:02:33.036+00'),
(14, 'Rizky Pilar', 'rizkypilar@Gmail.com', '$2a$10$UKrRJ/Qc.2QKE8jkQvYmDe3Vw/pTR9iGYe.GMFkz1awVQeOf6Bcl2', '089612348765', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 17, '2023-02-08 13:36:22.079+00', '2023-02-08 13:36:22.079+00'),
(15, 'salim said', 'salimsaid@gmail.com', '$2a$10$3wCuxhNTaXPNQOdcGlU4KepE77qsy9iE2bGi4nekJGen30bWJqnWC', '089630080124', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 14:05:22.305+00', '2023-03-19 14:44:27.112+00'),
(16, 'Fiqri Ramadhan', 'fiqri@Gmail.com', '$2a$10$qPY2NCLy7OJ8wXX8FpES9ul.0L3eRUUOJxmJf2ahE3LNcrJfVPmUK', '089630080132', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 18, '2023-02-08 14:27:32.79+00', '2023-02-08 14:27:32.79+00'),
(17, 'Fiqri', 'Fiqri01@Gmail.com', '$2a$10$LL5Izf/WiVn3CAifNrl5/uoTTVz1HzuvVCSKM.9im/V2x4rsueaie', '089630080321', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 14:52:06.683+00', '2023-02-08 14:52:06.683+00'),
(18, 'restu', 'restu@gmail.com', '$2a$10$ib7qTwL0rYCnqI93XejnUeeb9pmTQV29ceTPdM9GdGs76oQb6S8Im', '089611112222', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 19, '2023-02-08 19:47:58.752+00', '2023-02-08 19:47:58.752+00'),
(19, 'Maulana Ismail', 'maulana123@Gmail.com', '$2a$10$YArU6rmMMiks4znGBEHZJuZFfgkDqSoK4Up8thl2bKp1TSeZTZmoW', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 20, '2023-02-09 06:05:05.022+00', '2023-02-09 06:05:05.022+00'),
(20, 'Testing', 'test098@Gmail.com', '$2a$10$GTDdyI06Nk21IqoxfIEPOuLeX0MyzYBk5QcZdzvnm8uQscIBwLdw2', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 21, '2023-02-09 06:58:28.043+00', '2023-02-09 06:58:28.043+00'),
(21, 'Aldi', 'aldi@gmail.com', '$2a$10$LTk.zJi2fwAUCZCVfcslG.mlh83XcrontUkuVVtg9/RxTk0XXs2XK', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-09 14:23:14.781+00', '2023-02-09 14:23:14.781+00'),
(22, 'Gustian Putra', 'gustianputra@gmail.com', '$2a$10$UhcRtFu/o73kLWQz45pg4u2C.jIfFd2qolQGhzstnayO8Q.IGJF4q', '089765432100', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 00:59:01.95+00', '2023-02-10 00:59:01.95+00'),
(23, 'Ean 1', 'ean1@Gmail.com', '$2a$10$n501UKmuJHgdkZz/kZp.AOGTV.PYJoz3RHuZ2kNG.hNWs7Sd61ukO', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 01:22:07.812+00', '2023-02-10 01:22:07.812+00'),
(24, 'susanti ', 'susanti@gmail.com', '$2a$10$99tjO1sIoW5jsmOoYMkcz.J.7H2C02ic65e4MAInNIOpb1l0boisa', '0893213221', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 01:25:32.56+00', '2023-02-10 01:25:32.56+00'),
(25, 'Rizqi', 'rizqi@gmail.com', '$2a$10$z3R1P0LGB3cvo6fYdOUcPuCdgYs0oR3AkZGjUJSfSM33zfv9cEP0y', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 02:16:50.935+00', '2023-02-10 02:16:50.935+00'),
(26, 'Rizqi', 'rizqi123@gmail.com', '$2a$10$6F0VwYAgnHvJa52WEWzFJOT2qeC3FUnqWpyx9Ulr36Kmqen/Ee9yO', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 02:17:25.155+00', '2023-02-10 02:17:25.155+00'),
(27, 'boedyjvs', 'boedyjvs@gmail.com', '$2a$10$XrXgVdAbViEVhbVg/AHbXuvcd0dLAJvAYwt1GyqWt3woEOFYtTMmC', '123123123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 02:34:14.84+00', '2023-02-10 02:34:14.84+00'),
(28, 'restu 2', 'restu2@gmail.com', '$2a$10$dfeeGAnP4cRhLa4OwG150u2RZ8h46iTE6r.hr1x0Eer22wieWzjnO', '0897783232', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 22, '2023-02-10 02:44:12.169+00', '2023-02-10 02:44:12.169+00'),
(29, 'developer 1', 'developer@gmail.com', '$2a$10$J5KS4Fw0ZVpis5HQIePW3u01wDJpcdnSPZD1A0qVEWsmTlMpacx2C', '07799', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 02:48:10.908+00', '2023-02-10 02:48:10.908+00'),
(30, 'rachmad', 'rachmad@gmail.com', '$2a$10$Rf4OmHocCRA1MRJcXrgFGObLGSdd36hcqqOSICK79vlL7TbngCdpC', '088888888', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 03:05:17.724+00', '2023-02-10 03:05:17.724+00'),
(31, 'Rizky Pilar', 'rizkypilar@gmail.com', '$2a$10$vinJXQNsHJEk8vPtYlC5FeWs4X668uk/PjzVZLYk4eQNWxofhutR6', '081234569876', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 23, '2023-02-10 03:09:00.173+00', '2023-02-10 03:09:00.173+00'),
(32, 'Frenklin', 'frenklin@gmail.com', '$2a$10$0hM3HsnDyHQnc55aqDhjL.5VAfpPC5HNwvrEkXvxVltWRYMd/Vk9u', '085812345678', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 03:10:13.944+00', '2023-02-10 03:10:13.944+00'),
(33, 'Albar', 'riyadh@gmail.com', '$2a$10$lwd3Sc6OvOV/D6zYRKGJ1.r/almIJKSpX2tqSNrlyAOOzKn0dTM2W', '085812345678', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 03:13:36.916+00', '2023-03-13 09:30:15.133+00'),
(34, 'jafar', 'jafar@gmail.com', '$2a$10$sCEtEz3mkOaTZ.XLGOClTur3832ZMTNpVM3AUgNOgJ00AXnrbxxUC', '12313123123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 03:36:18.973+00', '2023-02-10 03:36:18.973+00'),
(35, 'testestes', 'tes3@gmail.com', '$2a$10$WBMMfRlINyc9emfDm22r7OVICnqnDGYQMBkqrzYlqtCCtvtRt7F5K', '123123123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-10 20:04:46.044+00', '2023-02-10 20:04:46.044+00'),
(36, 'ihsan', 'ihsan@gmail.com', '$2a$10$R7ki2Sa/coXnu.vQFXIIbuOWJtJUU.BD3YwBIxSy81k.ZbPlTVYqq', '085812345678', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 24, '2023-03-09 15:25:07.47+00', '2023-03-09 15:25:07.47+00'),
(37, 'Martin Tono Junior', 'martin@gmail.com', '$2a$10$sKwv4VNcYG8Lg65WH4NsyuCuWY3oUOiVtiF8Oa8Bagu5TM1GtXCOe', '888888886', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-03-10 07:21:14.499+00', '2023-03-10 23:27:02.319+00'),
(38, 'martin Tono', 'martintono@gmail.com', '$2a$10$s4r9YT7gQYqYrcC042q17.ogE4RBIkpzrOX7wwQqTzbtciJwWuywu', '0888888888', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 25, '2023-03-10 14:28:55.029+00', '2023-03-10 22:52:45.735+00'),
(39, 'Vladimir Albar', 'riyadhra@gmail.com', '$2a$10$2UzikGf4nHKJWPnDpi2vlu793PW5ntTPXyc7cASEU5OX1LHHDImXC', '085884272472', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 26, '2023-03-12 11:30:40.993+00', '2023-03-14 10:31:49.041+00'),
(40, 'billy', 'billy@Gmail.com', '$2a$10$Vkn7gDP7ilyTBcqHRtKJoO1hYNxqtZht02egvnfN32n9YHRgT2VWO', '089630080545', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-03-12 14:28:05.852+00', '2023-03-12 14:28:05.852+00'),
(41, 'Rizal Mahmud', 'rizalmahmud123@gmail.com', '$2a$10$OAcMk1Q7FuZG189G.GelmexxYmjpn/EVuFS1eFdCaoqthetw6E.n6', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-03-12 16:03:15.7+00', '2023-03-12 16:03:15.7+00'),
(42, 'Robert', 'robert123@gmail.com', '$2a$10$MIQu6Wc63TsDZKOXflpEnulMirLz.Hf4Ma0rJBwT.PLYCYknnU0eW', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-03-12 16:23:56.245+00', '2023-03-12 16:23:56.245+00'),
(43, 'Peter Parker', 'peterparker123@gmail.com', '$2a$10$vNxce5eCWHngQpbcu8nEv.65RM9edZT/pAtYETskdj./lPa/eBSGO', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 27, '2023-03-12 16:30:00.786+00', '2023-03-12 16:30:00.786+00'),
(44, 'Raka Ardiansyah', 'rakaardiansyah@gmail.com', '$2a$10$v4l8tPDqCA8vyOYL24CTheQplpKsPjTaflQeyr0oLV3ax3eqhB54e', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 28, '2023-03-12 16:36:42.344+00', '2023-03-12 16:36:42.344+00'),
(45, 'rakaaaaa', 'rakaaaaa@gmail.com', '$2a$10$R9fauIIVRQk4gBdQm53rqudoaP7LCNJJ19aph16u6YhWySKil58U.', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 29, '2023-03-12 16:43:40.247+00', '2023-03-12 16:43:40.247+00'),
(46, 'Ivan Febrianto', 'ivanfebrianto123@gmail.com', '$2a$10$S/S/EzSdOTCXsM1AXMaJwuD7ClB5QTQyXo6XXxbz0KKT/RQUQGl6.', '085157844290', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 30, '2023-03-12 16:48:40.091+00', '2023-03-12 16:48:40.091+00'),
(47, 'doyok kurniawan', 'doyok@gmail.com', '$2a$10$Mf5MQG6jX82UzY.7YjztXeSqGRi1Fi8KWgmKMsGHUJeldxtno0m8C', '092129102121', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-03-13 08:15:39.894+00', '2023-03-13 08:41:39.223+00'),
(48, 'restu recruiter', 'resturec@gmail.com', '$2a$10$s5KAuDfjovSdeaYHUrsa4Ojum/XUVJH8ygzBQHlCaqKHmNm6ZUBfm', '089541123132', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 31, '2023-03-19 02:29:50.018+00', '2023-03-19 02:29:50.018+00'),
(49, 'Jiko Santoso', 'jiko@gmail.com', '$2a$10$vBWJKK0JfQndxOqHD/aaYO7QyV5oIp0xDIo/F44wg/a2A8SWoXKpS', '089312317398', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-03-19 10:04:52.091+00', '2023-03-19 10:04:52.091+00'),
(50, 'Bilkis Ismail', 'bilkisismail07@Gmail.com', '$2a$10$WpwbEMVjVpLVRaaeHN0fcO6i8RsuLtdY8Gm7Awp/0SwyYHm7jwOW6', '089630080532', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 32, '2023-03-21 05:18:52.826+00', '2023-03-21 05:18:52.826+00'),
(51, 'Yurino', 'yurino@gmail.com', '$2a$10$7BGVLz3qF9ner0oIxY/eT.ZorT/.v0OS0qe2Kb4wl9LrPuAcBMMS6', '03952305322', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 33, '2023-03-21 05:48:14.012+00', '2023-03-21 05:48:14.012+00');

INSERT INTO "public"."work_experiences" ("id", "position", "company", "date", "description", "user_id", "logo", "createdAt", "updatedAt") VALUES
(1, 'Test', 'Test', 'Test', 'Test test', 7, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 14:29:53.74+00', '2023-02-08 14:29:53.74+00'),
(2, 'Test', 'Test', 'Test', 'Test test', 7, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 14:36:04.688+00', '2023-02-08 14:36:04.688+00'),
(3, 'Test', 'Test', 'Test', 'Test test', 10, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 15:24:22.233+00', '2023-02-08 15:24:22.233+00'),
(4, 'Test', 'Test', 'Test', 'Test test', 10, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 15:24:55.078+00', '2023-02-08 15:24:55.078+00'),
(5, 'Test', 'Test', 'Test', 'Test test', 5, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 21:03:14.176+00', '2023-02-08 21:03:14.176+00'),
(6, 'Backend Developer', 'PT Telkom Indonesia', '2021', 'Membuat CRUD website', 32, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-03-12 11:26:43.295+00', '2023-03-12 11:26:43.295+00'),
(7, 'Backend Developer', 'PT Telkom Indonesia', '2021', 'Membuat CRUD website', 32, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-03-12 11:30:14.922+00', '2023-03-12 11:30:14.922+00'),
(8, 'Frontend Developer', 'PT Goto (Gojek Tokopedia)', '2020', 'Membuat tampilan website dan optimasi SEO', 32, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-03-12 11:30:55.809+00', '2023-03-12 11:30:55.809+00'),
(9, 'Frontend Developer', 'PT Goto (Gojek Tokopedia)', '2045', 'Membuat website', 32, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-03-12 13:33:42.288+00', '2023-03-12 13:33:42.288+00'),
(10, 'Frontend Developer', 'Telegram', '2021 - 2023', 'Saya membuat website, memperbaiki bug pada website', 28, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-03-13 14:47:41.227+00', '2023-03-13 14:47:41.227+00'),
(11, 'Test', 'Test', 'Test', 'Test test', 8, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-03-14 07:28:12.388+00', '2023-03-14 07:28:12.388+00'),
(12, 'Backend Developer', 'PT. Gojek', '2000-01-012022-01-03', 'Handle Payment Stuff', 8, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-03-14 13:52:15.265+00', '2023-03-14 13:52:15.265+00'),
(13, 'Backend Developer', 'PT. Lekom Maras', '2023-03-012023-03-31', 'Handling Server', 8, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-03-14 14:04:23.459+00', '2023-03-14 14:04:23.459+00'),
(14, 'Backend Developer', 'PT. Sinar Bulan', '2023-03-012023-03-31', 'Handle Backend', 10, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-03-14 15:01:31.228+00', '2023-03-14 15:01:31.228+00');

