PGDMP     4                
    y         	   disquaire    14.1    14.1 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394 	   disquaire    DATABASE     e   CREATE DATABASE disquaire WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE disquaire;
                postgres    false            ?            1259    16422 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16421    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            ?            1259    16431    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16430    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            ?            1259    16415    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16414    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            ?            1259    16438 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    16447    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    16446    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            ?            1259    16437    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            ?            1259    16454    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    16453 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            ?            1259    16513    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    16512    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            ?            1259    16406    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16405    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            ?            1259    16397    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16396    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            ?            1259    16542    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    16552    store_album    TABLE     ?   CREATE TABLE public.store_album (
    id bigint NOT NULL,
    reference integer,
    created_at timestamp with time zone NOT NULL,
    available boolean NOT NULL,
    title character varying(200) NOT NULL,
    picture character varying(100)
);
    DROP TABLE public.store_album;
       public         heap    postgres    false            ?            1259    16584    store_album_artists    TABLE     ?   CREATE TABLE public.store_album_artists (
    id bigint NOT NULL,
    album_id bigint NOT NULL,
    artist_id bigint NOT NULL
);
 '   DROP TABLE public.store_album_artists;
       public         heap    postgres    false            ?            1259    16583    store_album_artists_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.store_album_artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.store_album_artists_id_seq;
       public          postgres    false    237            ?           0    0    store_album_artists_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.store_album_artists_id_seq OWNED BY public.store_album_artists.id;
          public          postgres    false    236            ?            1259    16551    store_album_id_seq    SEQUENCE     {   CREATE SEQUENCE public.store_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.store_album_id_seq;
       public          postgres    false    229            ?           0    0    store_album_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.store_album_id_seq OWNED BY public.store_album.id;
          public          postgres    false    228            ?            1259    16559    store_artist    TABLE     g   CREATE TABLE public.store_artist (
    id bigint NOT NULL,
    name character varying(200) NOT NULL
);
     DROP TABLE public.store_artist;
       public         heap    postgres    false            ?            1259    16558    store_artist_id_seq    SEQUENCE     |   CREATE SEQUENCE public.store_artist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.store_artist_id_seq;
       public          postgres    false    231            ?           0    0    store_artist_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.store_artist_id_seq OWNED BY public.store_artist.id;
          public          postgres    false    230            ?            1259    16575    store_booking    TABLE     ?   CREATE TABLE public.store_booking (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    contacted boolean NOT NULL,
    album_id bigint NOT NULL,
    contact_id bigint NOT NULL
);
 !   DROP TABLE public.store_booking;
       public         heap    postgres    false            ?            1259    16574    store_booking_id_seq    SEQUENCE     }   CREATE SEQUENCE public.store_booking_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_booking_id_seq;
       public          postgres    false    235            ?           0    0    store_booking_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_booking_id_seq OWNED BY public.store_booking.id;
          public          postgres    false    234            ?            1259    16568    store_contact    TABLE     ?   CREATE TABLE public.store_contact (
    id bigint NOT NULL,
    email character varying(100) NOT NULL,
    name character varying(200) NOT NULL
);
 !   DROP TABLE public.store_contact;
       public         heap    postgres    false            ?            1259    16567    store_contact_id_seq    SEQUENCE     }   CREATE SEQUENCE public.store_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_contact_id_seq;
       public          postgres    false    233            ?           0    0    store_contact_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_contact_id_seq OWNED BY public.store_contact.id;
          public          postgres    false    232            ?           2604    16425    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            ?           2604    16434    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            ?           2604    16418    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            ?           2604    16441    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    16450    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    16457    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    16516    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            ?           2604    16409    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    16400    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            ?           2604    16555    store_album id    DEFAULT     p   ALTER TABLE ONLY public.store_album ALTER COLUMN id SET DEFAULT nextval('public.store_album_id_seq'::regclass);
 =   ALTER TABLE public.store_album ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            ?           2604    16587    store_album_artists id    DEFAULT     ?   ALTER TABLE ONLY public.store_album_artists ALTER COLUMN id SET DEFAULT nextval('public.store_album_artists_id_seq'::regclass);
 E   ALTER TABLE public.store_album_artists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            ?           2604    16562    store_artist id    DEFAULT     r   ALTER TABLE ONLY public.store_artist ALTER COLUMN id SET DEFAULT nextval('public.store_artist_id_seq'::regclass);
 >   ALTER TABLE public.store_artist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            ?           2604    16578    store_booking id    DEFAULT     t   ALTER TABLE ONLY public.store_booking ALTER COLUMN id SET DEFAULT nextval('public.store_booking_id_seq'::regclass);
 ?   ALTER TABLE public.store_booking ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            ?           2604    16571    store_contact id    DEFAULT     t   ALTER TABLE ONLY public.store_contact ALTER COLUMN id SET DEFAULT nextval('public.store_contact_id_seq'::regclass);
 ?   ALTER TABLE public.store_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            ?          0    16422 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   o?       ?          0    16431    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   ??       ?          0    16415    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   ??       ?          0    16438 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   X?       ?          0    16447    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   ?       ?          0    16454    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   6?       ?          0    16513    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   S?       ?          0    16406    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ??       ?          0    16397    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   /?       ?          0    16542    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   ??       ?          0    16552    store_album 
   TABLE DATA           [   COPY public.store_album (id, reference, created_at, available, title, picture) FROM stdin;
    public          postgres    false    229   ?       ?          0    16584    store_album_artists 
   TABLE DATA           F   COPY public.store_album_artists (id, album_id, artist_id) FROM stdin;
    public          postgres    false    237   ??       ?          0    16559    store_artist 
   TABLE DATA           0   COPY public.store_artist (id, name) FROM stdin;
    public          postgres    false    231   3?       ?          0    16575    store_booking 
   TABLE DATA           X   COPY public.store_booking (id, created_at, contacted, album_id, contact_id) FROM stdin;
    public          postgres    false    235   ??       ?          0    16568    store_contact 
   TABLE DATA           8   COPY public.store_contact (id, email, name) FROM stdin;
    public          postgres    false    233   ??       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    219            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 14, true);
          public          postgres    false    225            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    211            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public          postgres    false    209            ?           0    0    store_album_artists_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.store_album_artists_id_seq', 7, true);
          public          postgres    false    236            ?           0    0    store_album_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.store_album_id_seq', 7, true);
          public          postgres    false    228            ?           0    0    store_artist_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.store_artist_id_seq', 6, true);
          public          postgres    false    230            ?           0    0    store_booking_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.store_booking_id_seq', 1, true);
          public          postgres    false    234            ?           0    0    store_contact_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.store_contact_id_seq', 1, true);
          public          postgres    false    232            ?           2606    16540    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            ?           2606    16470 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            ?           2606    16436 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            ?           2606    16427    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            ?           2606    16461 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            ?           2606    16420 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            ?           2606    16452 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            ?           2606    16485 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            ?           2606    16443    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            ?           2606    16459 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            ?           2606    16499 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            ?           2606    16535     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            ?           2606    16521 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            ?           2606    16413 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            ?           2606    16411 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            ?           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            ?           2606    16548 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            ?           2606    16603 H   store_album_artists store_album_artists_album_id_artist_id_9c8fa2e6_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.store_album_artists
    ADD CONSTRAINT store_album_artists_album_id_artist_id_9c8fa2e6_uniq UNIQUE (album_id, artist_id);
 r   ALTER TABLE ONLY public.store_album_artists DROP CONSTRAINT store_album_artists_album_id_artist_id_9c8fa2e6_uniq;
       public            postgres    false    237    237            ?           2606    16589 ,   store_album_artists store_album_artists_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.store_album_artists
    ADD CONSTRAINT store_album_artists_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.store_album_artists DROP CONSTRAINT store_album_artists_pkey;
       public            postgres    false    237            ?           2606    16557    store_album store_album_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.store_album
    ADD CONSTRAINT store_album_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.store_album DROP CONSTRAINT store_album_pkey;
       public            postgres    false    229            ?           2606    16566 "   store_artist store_artist_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.store_artist
    ADD CONSTRAINT store_artist_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.store_artist DROP CONSTRAINT store_artist_name_key;
       public            postgres    false    231            ?           2606    16564    store_artist store_artist_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.store_artist
    ADD CONSTRAINT store_artist_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.store_artist DROP CONSTRAINT store_artist_pkey;
       public            postgres    false    231            ?           2606    16582 (   store_booking store_booking_album_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.store_booking
    ADD CONSTRAINT store_booking_album_id_key UNIQUE (album_id);
 R   ALTER TABLE ONLY public.store_booking DROP CONSTRAINT store_booking_album_id_key;
       public            postgres    false    235            ?           2606    16580     store_booking store_booking_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_booking
    ADD CONSTRAINT store_booking_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_booking DROP CONSTRAINT store_booking_pkey;
       public            postgres    false    235            ?           2606    16573     store_contact store_contact_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_contact
    ADD CONSTRAINT store_contact_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_contact DROP CONSTRAINT store_contact_pkey;
       public            postgres    false    233            ?           1259    16541    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            ?           1259    16481 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            ?           1259    16482 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            ?           1259    16467 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            ?           1259    16497 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            ?           1259    16496 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            ?           1259    16511 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            ?           1259    16510 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            ?           1259    16536     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            ?           1259    16532 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            ?           1259    16533 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            ?           1259    16550 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            ?           1259    16549 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227            ?           1259    16614 %   store_album_artists_album_id_2d0c1a8e    INDEX     i   CREATE INDEX store_album_artists_album_id_2d0c1a8e ON public.store_album_artists USING btree (album_id);
 9   DROP INDEX public.store_album_artists_album_id_2d0c1a8e;
       public            postgres    false    237            ?           1259    16615 &   store_album_artists_artist_id_9d9c2c0a    INDEX     k   CREATE INDEX store_album_artists_artist_id_9d9c2c0a ON public.store_album_artists USING btree (artist_id);
 :   DROP INDEX public.store_album_artists_artist_id_9d9c2c0a;
       public            postgres    false    237            ?           1259    16590    store_artist_name_7fe4f771_like    INDEX     l   CREATE INDEX store_artist_name_7fe4f771_like ON public.store_artist USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.store_artist_name_7fe4f771_like;
       public            postgres    false    231            ?           1259    16601 !   store_booking_contact_id_d46d585e    INDEX     a   CREATE INDEX store_booking_contact_id_d46d585e ON public.store_booking USING btree (contact_id);
 5   DROP INDEX public.store_booking_contact_id_d46d585e;
       public            postgres    false    235            ?           2606    16476 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    218    214    3258            ?           2606    16471 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    216    3263    218            ?           2606    16462 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    212    3253    214            ?           2606    16491 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    222    3263    216            ?           2606    16486 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    222    220    3271            ?           2606    16505 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    224    214    3258            ?           2606    16500 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    224    3271    220            ?           2606    16522 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    212    3253            ?           2606    16527 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    226    220    3271            ?           2606    16604 K   store_album_artists store_album_artists_album_id_2d0c1a8e_fk_store_album_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_album_artists
    ADD CONSTRAINT store_album_artists_album_id_2d0c1a8e_fk_store_album_id FOREIGN KEY (album_id) REFERENCES public.store_album(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.store_album_artists DROP CONSTRAINT store_album_artists_album_id_2d0c1a8e_fk_store_album_id;
       public          postgres    false    3296    229    237            ?           2606    16609 M   store_album_artists store_album_artists_artist_id_9d9c2c0a_fk_store_artist_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_album_artists
    ADD CONSTRAINT store_album_artists_artist_id_9d9c2c0a_fk_store_artist_id FOREIGN KEY (artist_id) REFERENCES public.store_artist(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.store_album_artists DROP CONSTRAINT store_album_artists_artist_id_9d9c2c0a_fk_store_artist_id;
       public          postgres    false    231    3301    237            ?           2606    16591 ?   store_booking store_booking_album_id_e214fb79_fk_store_album_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_booking
    ADD CONSTRAINT store_booking_album_id_e214fb79_fk_store_album_id FOREIGN KEY (album_id) REFERENCES public.store_album(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.store_booking DROP CONSTRAINT store_booking_album_id_e214fb79_fk_store_album_id;
       public          postgres    false    3296    229    235            ?           2606    16596 C   store_booking store_booking_contact_id_d46d585e_fk_store_contact_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_booking
    ADD CONSTRAINT store_booking_contact_id_d46d585e_fk_store_contact_id FOREIGN KEY (contact_id) REFERENCES public.store_contact(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.store_booking DROP CONSTRAINT store_booking_contact_id_d46d585e_fk_store_contact_id;
       public          postgres    false    3303    233    235            ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x?]?Yn?0??g{??
C??n?RE???)Pۤʒ??n?p}?o???ܼ?CV?mv????Mn????m?????)?^1,????
??w???/?lr???S@??'? ?	{?}?b??NT??Re??y2%?o?d?v?]Hrٴ?ARp???K*??󦂀???+y????	????N|7????L77????????
?????????Uv?<?I_8s?!Wٜ??K_???d?w6?IL???[gUDx?m?gg?T?o??-??	`?l2??F,?t?9/???љKʀ'[?13?BP?=??RP?I?I1(xՓ???h????Y??@bO??ƅ;'?.?/???.??G????״?8~?CgK5???>?j?{??????J7??b??r??,      ?   ?   x?e??
?@ ϻO???d?}??	AFAQQ?F???j?????Ss??0@.?J???2?\(X?Q?O?@??i???֍??t??a???%??yb?Q????????-?5M7?p?Wn? Ch4Q4@x??8?l?p????<?wB~?V?>?^Zʼ?b]???????f????НE)???6?      ?      x?????? ? ?      ?      x?????? ? ?      ?   E  x?}?AN?0E??)?nQ-?=?x?????Q??$?BU?q.???&?dɛy???Zi?l????I?0?) R?51??ML?M?P_??'?T??} /Yi$i-v?Ok??Ok+-?a3{????7eK???`<?q??c??????RA9???????>?V?]I??yp?????<t?*N%n??????FLվ?ƠX"??)e??~??kqq)???-z?Y$?cs??pZ?ԂIp?َV???u????J????L?g?.vù]?B/?N?&?)'?o???ט?^m?}??}??o????Z?????p?9????x?UU}???1      ?   w   x?M?K?0?~?A??wa?+D4qd;?޾@[?ݛ??u?9%rq?p???E?5'?$??D?VqZ?+?4H?O?Se?\??W?6p%sQ?0?-㶑z2?}??G?~??;????4?:`      ?   ?  x???An? E??)??Z1`ܳTB(?.?m\?Us?qI?:r6l?oCstS4S??ل??N6Z=4?Pxx???F???Wʁ0x&p??^??~?? D?F?F;=?@?r??F?\???g??辍J?;?O?m? ????ve????hݤ>ݫ㧳?$`?%[?u???lѿj??wԤG??? y?I?ڣJ?x5??rE9?F??3???MC?4?dE?????Q?a??)??UH{?K???q[G?yA ?~?t?Y?M[???s?
???????b}?[????DB1??k%?z?'????{??hB????#????c'7??HF???' m%u?=?j9%e???????޻e~ù??aŀZ??Ȩٻ???<??????*?3??[}X???%xi?l?YO??Q`-\J蚐?k?3;??﯇????d?      ?   	  x???r?0  г|E??$?[??R)0?q?@? ???????e?x??&?z?t?ڡU?P>?^?W??0wJ?? ??]7?1?	6??9?Gqc??c&????4?#?i??YQO????
CEr??#r[ܫ?n?? ϡ??O?'T;ɹ??f????|??!'?n?-?Ib?#5??-O?s?"??h??????ٔ?Ѳ?7<(~?߯q??#p?_?A)??Cyݸ?'b%d?ĵ?
E?Dޠb`??x?u??;???Z??\?      ?   ?   x?m?Mn?0??s??+\???5?@??M??"	"AG??XB?G???gv ;?k?^Y???9????$<G$????cr??}O84:?sB?uJ? ?d<?^Zj?q?}?}??m???#??xy?$[Iz樰R?JG?&????m??),?????zڃ??@k?zF?K?W?2?kh?˪??t???i?̊?_1=?㵽?)?evj???#?߰m6?&/C????ՁVU????      ?   *   x??I 0??wfR׋?????$	?"m?r?e?Q?h??      ?   J   x?ʻ? ??o
&???4i2BH?)
?O??U?X&6?t%vyA'??<??A?b?>.??-????p/ >??      ?   3   x?3?4202?54?5?T04?24?26?37075??60?L?4?4?????? ?{      ?   +   x?3?L???L?/5,?????KtH?M???K?υ?p??qqq 2?     