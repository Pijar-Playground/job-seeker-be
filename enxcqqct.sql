-- -------------------------------------------------------------
-- TablePlus 5.3.0(486)
--
-- https://tableplus.com/
--
-- Database: enxcqqct
-- Generation Time: 2023-02-09 14:33:01.6140
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
(1, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:25:59.212+00', '2023-02-08 21:04:43.82+00', 15, 't'),
(2, 1, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:37:26.696+00', '2023-02-08 21:04:48.728+00', 12, 't'),
(3, 1, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:37:59.172+00', '2023-02-08 14:37:59.172+00', 12, 'f'),
(4, 12, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:38:45.666+00', '2023-02-08 14:38:45.666+00', 12, 'f'),
(5, 7, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:47:32.677+00', '2023-02-09 03:17:24.038+00', 7, 't'),
(6, 7, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:50:39.473+00', '2023-02-08 14:50:39.473+00', 7, 'f'),
(7, 7, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 14:55:57.028+00', '2023-02-09 01:06:02.153+00', 7, 't'),
(8, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:27:05.879+00', '2023-02-08 15:27:05.879+00', 10, 'f'),
(9, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:28:21.868+00', '2023-02-08 15:28:21.868+00', 10, 'f'),
(10, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:29:30.656+00', '2023-02-09 04:04:04.406+00', 10, 't'),
(11, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:35:49.702+00', '2023-02-08 15:35:49.702+00', 10, 'f'),
(12, 10, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:37:08.407+00', '2023-02-09 04:08:21.135+00', 10, 't'),
(13, 15, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-08 15:39:37.895+00', '2023-02-08 15:39:37.895+00', 10, 'f'),
(14, 10, 'lagi apa ?', '089630080123', 'manggil aja', 'test', 'test@Gmail.com', '2023-02-08 15:40:19.097+00', '2023-02-08 15:40:41.846+00', 10, 't'),
(15, 7, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 00:58:58.483+00', '2023-02-09 04:07:27.823+00', 7, 't'),
(16, 7, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 01:01:11.065+00', '2023-02-09 01:01:11.065+00', 7, 'f'),
(17, 12, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 01:01:50.608+00', '2023-02-09 01:02:04.741+00', 7, 't'),
(18, 7, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 01:05:23.32+00', '2023-02-09 04:04:47.171+00', 7, 't'),
(19, 10, 'hello test aja ya', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 01:05:52.923+00', '2023-02-09 01:05:52.923+00', 7, 'f'),
(20, 12, 'hello test', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 03:21:56.082+00', '2023-02-09 03:21:56.082+00', 7, 'f'),
(21, 17, 'hello test', '089630080123', 'Projek', 'test123', 'test@Gmail.com', '2023-02-09 03:26:27.356+00', '2023-02-09 03:26:27.356+00', 7, 'f'),
(22, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:03:18.036+00', '2023-02-09 04:03:25.967+00', 10, 't'),
(23, 7, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:03:35.395+00', '2023-02-09 04:03:35.395+00', 5, 'f'),
(24, 10, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:03:57.327+00', '2023-02-09 04:09:05.012+00', 10, 't'),
(25, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:04:32.5+00', '2023-02-09 04:09:09.239+00', 10, 't'),
(26, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:05:54.271+00', '2023-02-09 04:06:34.646+00', 10, 't'),
(27, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:07:12.493+00', '2023-02-09 04:07:19.877+00', 10, 't'),
(28, 15, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:08:06.467+00', '2023-02-09 04:09:15.245+00', 8, 't'),
(29, 10, 'hello test aja ya', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:12:57.889+00', '2023-02-09 04:13:11.13+00', 10, 't'),
(30, 10, 'hello test aja yaaaa', '089630080123', 'Projek2', 'test', 'test@Gmail.com', '2023-02-09 04:13:35.081+00', '2023-02-09 04:16:09.397+00', 10, 't'),
(31, 5, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:21:42.586+00', '2023-02-09 04:21:42.586+00', 13, 'f'),
(32, 5, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:22:11.384+00', '2023-02-09 04:22:11.384+00', 13, 'f'),
(33, 5, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:22:16.344+00', '2023-02-09 04:22:16.344+00', 13, 'f'),
(34, 10, 'hello test aja ya', '089630080123', 'Projek', 'test', 'test@Gmail.com', '2023-02-09 04:22:21.419+00', '2023-02-09 04:22:21.419+00', 13, 'f');

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
(11, 'Netflix Super Clone', 'https://www.cyclic.sh/images/cyclic-logo.png', 'https://www.cyclic.sh', 'test', 10, '2023-02-08 14:38:36.096+00', '2023-02-08 14:38:36.096+00');

INSERT INTO "public"."recruiters" ("id", "company", "position", "createdAt", "updatedAt") VALUES
(13, 'Pijar', 'Technical Trainer', '2023-02-08 07:27:43.541+00', '2023-02-08 07:27:43.541+00'),
(14, 'PT A', 'Engineer', '2023-02-08 07:29:29.357+00', '2023-02-08 07:29:29.357+00'),
(15, 'Pijar', 'Talent', '2023-02-08 07:35:21.912+00', '2023-02-08 07:35:21.912+00'),
(16, 'pos', 'everywhere', '2023-02-08 12:02:34.315+00', '2023-02-08 12:02:34.315+00'),
(17, 'Telkom', 'Trainer', '2023-02-08 13:36:21.932+00', '2023-02-08 13:36:21.932+00'),
(18, 'Pijar', 'Technical Trainer', '2023-02-08 14:27:32.642+00', '2023-02-08 14:27:32.642+00'),
(19, 'traveloka', 'web developer', '2023-02-08 19:47:58.564+00', '2023-02-08 19:47:58.564+00'),
(20, 'Pijar', 'Test', '2023-02-09 06:05:04.863+00', '2023-02-09 06:05:04.863+00'),
(21, 'Pijar', 'Technical Trainer', '2023-02-09 06:58:27.885+00', '2023-02-09 06:58:27.885+00');

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
(5, 'unknown', 'unknown', 'unknown', '-', '["Docker","Sequelize"]', 10, '2023-02-08 07:36:06.289+00', '2023-02-08 21:01:15.431+00'),
(6, 'unknown', 'unknown', 'unknown', '-', '["Javascript","PHP"]', 11, '2023-02-08 07:58:20.484+00', '2023-02-08 07:59:09.01+00'),
(7, 'unknown', 'unknown', 'unknown', '-', '["React","React Native","PHP"]', 12, '2023-02-08 07:59:42.679+00', '2023-02-08 08:35:44.847+00'),
(8, 'unknown', 'unknown', 'pos', '-', '[]', 13, '2023-02-08 12:02:34.62+00', '2023-02-08 12:02:34.62+00'),
(9, 'unknown', 'unknown', 'Telkom', '-', '[]', 14, '2023-02-08 13:36:22.222+00', '2023-02-08 13:36:22.222+00'),
(10, 'Backend Developer', 'Jakarta', 'unknown', 'testttttttttttttttttttttt', '["Javaspring","Django"]', 15, '2023-02-08 14:05:22.448+00', '2023-02-08 14:23:30.573+00'),
(11, 'unknown', 'unknown', 'Pijar', '-', '[]', 16, '2023-02-08 14:27:32.933+00', '2023-02-08 14:27:32.933+00'),
(12, 'unknown', 'unknown', 'unknown', '-', '[]', 17, '2023-02-08 14:52:06.832+00', '2023-02-08 14:52:06.832+00'),
(13, 'unknown', 'unknown', 'traveloka', '-', '[]', 18, '2023-02-08 19:47:58.896+00', '2023-02-08 19:47:58.896+00'),
(14, 'unknown', 'unknown', 'Pijar', '-', '[]', 19, '2023-02-09 06:05:05.166+00', '2023-02-09 06:05:05.166+00'),
(15, 'unknown', 'unknown', 'Pijar', '-', '[]', 20, '2023-02-09 06:58:28.188+00', '2023-02-09 06:58:28.188+00');

INSERT INTO "public"."users" ("id", "fullname", "email", "password", "phone_number", "photo_profile", "recruiter_id", "createdAt", "updatedAt") VALUES
(6, 'Testing', 'recruiter07@Gmail.com', '$2a$10$JnXkZDLdGV5f1AvaMMCmqOFX4VkIVanSb1mBrzo4dJNmGX1kYAHCS', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 13, '2023-02-08 07:27:43.663+00', '2023-02-08 07:27:43.663+00'),
(7, 'roman', 'roman@gmail.com', '$2a$10$IW8chzivkI2R/jflO6b.yOw5o8IsmACMREl4QSsA7eGiN.FZkN/K6', '0888888888', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 07:28:19.133+00', '2023-02-08 07:28:19.133+00'),
(8, 'roman', 'roman1@gmail.com', '$2a$10$IkKliSqNxBGVyEUr8iKUv.27a8DvPVNQgtprsGRQ.IwEJerJBqTOm', '08888888888', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 14, '2023-02-08 07:29:29.509+00', '2023-02-08 07:29:29.509+00'),
(9, 'mail', 'mail@mail.com', '$2a$10$5ZaYLJSCSvxERlp0LZJuUuza78wlWuJm3aiTE01/5ZoLtBKePgSi6', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 15, '2023-02-08 07:35:22.058+00', '2023-02-08 07:35:22.058+00'),
(10, 'Jarjit', 'jarjit@gmail.com', '$2a$10$YiEfVDtBaLhYDQRcsZiDseKi5l2oHBx/so9nxsYuunqQ2hzOG6xrq', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 07:36:06.146+00', '2023-02-08 07:36:06.146+00'),
(11, 'Bilkis Ismail', 'customer@Gmail.com', '$2a$10$YTg.oqCawKjRbyPdg/W6neIkrmSWenIQXvTjYN679lfQpp8y6NqgK', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 07:58:20.334+00', '2023-02-08 07:58:20.334+00'),
(12, 'Ean', 'ean@Gmail.com', '$2a$10$bdLPc1uiii4C/aKgGWl.DuapjiYSi318TqEEWf7vaBEaDR6Q7cxym', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 07:59:42.536+00', '2023-02-08 07:59:42.536+00'),
(13, 'hansip', 'hansip@gmail.com', '$2a$10$Is4cRIA4OZVlRk.cR9uHV.zYstJ09xFb0xYVTWBx9.LyGHvLrPmjO', '123456789', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 16, '2023-02-08 12:02:34.477+00', '2023-02-08 12:02:34.477+00'),
(14, 'Rizky Pilar', 'rizkypilar@Gmail.com', '$2a$10$UKrRJ/Qc.2QKE8jkQvYmDe3Vw/pTR9iGYe.GMFkz1awVQeOf6Bcl2', '089612348765', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 17, '2023-02-08 13:36:22.079+00', '2023-02-08 13:36:22.079+00'),
(15, 'Salim Said', 'salimsaid@gmail.com', '$2a$10$3wCuxhNTaXPNQOdcGlU4KepE77qsy9iE2bGi4nekJGen30bWJqnWC', '089630080124', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 14:05:22.305+00', '2023-02-08 14:05:22.305+00'),
(16, 'Fiqri Ramadhan', 'fiqri@Gmail.com', '$2a$10$qPY2NCLy7OJ8wXX8FpES9ul.0L3eRUUOJxmJf2ahE3LNcrJfVPmUK', '089630080132', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 18, '2023-02-08 14:27:32.79+00', '2023-02-08 14:27:32.79+00'),
(17, 'Fiqri', 'Fiqri01@Gmail.com', '$2a$10$LL5Izf/WiVn3CAifNrl5/uoTTVz1HzuvVCSKM.9im/V2x4rsueaie', '089630080321', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 0, '2023-02-08 14:52:06.683+00', '2023-02-08 14:52:06.683+00'),
(18, 'restu', 'restu@gmail.com', '$2a$10$ib7qTwL0rYCnqI93XejnUeeb9pmTQV29ceTPdM9GdGs76oQb6S8Im', '089611112222', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 19, '2023-02-08 19:47:58.752+00', '2023-02-08 19:47:58.752+00'),
(19, 'Maulana Ismail', 'maulana123@Gmail.com', '$2a$10$YArU6rmMMiks4znGBEHZJuZFfgkDqSoK4Up8thl2bKp1TSeZTZmoW', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 20, '2023-02-09 06:05:05.022+00', '2023-02-09 06:05:05.022+00'),
(20, 'Testing', 'test098@Gmail.com', '$2a$10$GTDdyI06Nk21IqoxfIEPOuLeX0MyzYBk5QcZdzvnm8uQscIBwLdw2', '089630080123', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 21, '2023-02-09 06:58:28.043+00', '2023-02-09 06:58:28.043+00');

INSERT INTO "public"."work_experiences" ("id", "position", "company", "date", "description", "user_id", "logo", "createdAt", "updatedAt") VALUES
(1, 'Test', 'Test', 'Test', 'Test test', 7, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 14:29:53.74+00', '2023-02-08 14:29:53.74+00'),
(2, 'Test', 'Test', 'Test', 'Test test', 7, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 14:36:04.688+00', '2023-02-08 14:36:04.688+00'),
(3, 'Test', 'Test', 'Test', 'Test test', 10, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 15:24:22.233+00', '2023-02-08 15:24:22.233+00'),
(4, 'Test', 'Test', 'Test', 'Test test', 10, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 15:24:55.078+00', '2023-02-08 15:24:55.078+00'),
(5, 'Test', 'Test', 'Test', 'Test test', 5, 'https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png', '2023-02-08 21:03:14.176+00', '2023-02-08 21:03:14.176+00');

