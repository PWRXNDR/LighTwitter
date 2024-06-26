-- This file should undo anything in `up.sql`
ALTER TABLE public.posts DROP CONSTRAINT IF EXISTS user_id_fk CASCADE;
ALTER TABLE public.posts DROP CONSTRAINT IF EXISTS direct_message_fk CASCADE;
ALTER TABLE public.posts DROP CONSTRAINT IF EXISTS comment_fk CASCADE;
ALTER TABLE public.poll_choices DROP CONSTRAINT IF EXISTS post_id_fk CASCADE;
ALTER TABLE public.poll_votes DROP CONSTRAINT IF EXISTS post_id_fk CASCADE;
ALTER TABLE public.poll_votes DROP CONSTRAINT IF EXISTS user_id_fk CASCADE;
ALTER TABLE public.poll_votes DROP CONSTRAINT IF EXISTS choice_id_fk CASCADE;
ALTER TABLE public.reactions DROP CONSTRAINT IF EXISTS post_id_fk CASCADE;
ALTER TABLE public.reactions DROP CONSTRAINT IF EXISTS user_id_fk CASCADE;
ALTER TABLE public.bookmarks DROP CONSTRAINT IF EXISTS post_id_fk CASCADE;
ALTER TABLE public.bookmarks DROP CONSTRAINT IF EXISTS user_id_fk CASCADE;
ALTER TABLE public.web DROP CONSTRAINT IF EXISTS user_id_fk CASCADE;
ALTER TABLE public.followers DROP CONSTRAINT IF EXISTS user_id_fk CASCADE;
ALTER TABLE public.followers DROP CONSTRAINT IF EXISTS follows_user_id CASCADE;
DROP TABLE IF EXISTS public.posts CASCADE;
DROP TABLE IF EXISTS public.poll_choices CASCADE;
DROP TABLE IF EXISTS public.poll_votes CASCADE;
DROP TABLE IF EXISTS public.reactions CASCADE;
DROP TABLE IF EXISTS public.bookmarks CASCADE;
DROP TABLE IF EXISTS public.users CASCADE;
DROP TABLE IF EXISTS public.web CASCADE;
DROP TABLE IF EXISTS public.followers CASCADE;
DROP INDEX IF EXISTS public.post_pagination_index CASCADE;
