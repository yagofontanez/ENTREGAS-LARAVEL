PGDMP  ;                    |            buspay    16.4    16.4 M               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16508    buspay    DATABASE     }   CREATE DATABASE buspay WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE buspay;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                        0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    5            �            1259    16509    ADMS    TABLE     �  CREATE TABLE public."ADMS" (
    id bigint NOT NULL,
    "ADM_NOME" character varying(255) NOT NULL,
    "ADM_EMAIL" character varying(255) NOT NULL,
    "ADM_DOCUMENTO" character varying(255) NOT NULL,
    "ADM_SENHA" character varying(255) NOT NULL,
    "ADM_TOKENACESSO" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public."ADMS";
       public         heap    postgres    false    5            �            1259    16514    ADMS_id_seq    SEQUENCE     v   CREATE SEQUENCE public."ADMS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."ADMS_id_seq";
       public          postgres    false    215    5            !           0    0    ADMS_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."ADMS_id_seq" OWNED BY public."ADMS".id;
          public          postgres    false    216            �            1259    16515 	   PASSAGENS    TABLE     i  CREATE TABLE public."PASSAGENS" (
    id bigint NOT NULL,
    "PAS_CIDADEIDA" character varying(255) NOT NULL,
    "PAS_ESTADOIDA" character varying(255) NOT NULL,
    "PAS_CIDADEVOLTA" character varying(255),
    "PAS_ESTADOVOLTA" character varying(255),
    "PAS_HORASIDA" time(0) without time zone NOT NULL,
    "PAS_HORASVOLTA" time(0) without time zone,
    "PAS_PRECO" numeric(8,2) NOT NULL,
    "PAS_EMPRESA" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    "PAS_DIAIDA" date,
    "PAS_DIAVOLTA" date,
    "PAS_SALVADA" text
);
    DROP TABLE public."PASSAGENS";
       public         heap    postgres    false    5            �            1259    16520    PASSAGENS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."PASSAGENS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."PASSAGENS_id_seq";
       public          postgres    false    217    5            "           0    0    PASSAGENS_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."PASSAGENS_id_seq" OWNED BY public."PASSAGENS".id;
          public          postgres    false    218            �            1259    16521    USUARIOS    TABLE     �  CREATE TABLE public."USUARIOS" (
    id bigint NOT NULL,
    "US_NOME" character varying(255) NOT NULL,
    "US_EMAIL" character varying(255) NOT NULL,
    "US_SENHA" character varying(255) NOT NULL,
    "US_TIPOCOMPRADOR" character varying(255) DEFAULT 'Comprador'::character varying NOT NULL,
    "US_DOCUMENTO" character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public."USUARIOS";
       public         heap    postgres    false    5            �            1259    16527    USUARIOS_id_seq    SEQUENCE     z   CREATE SEQUENCE public."USUARIOS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."USUARIOS_id_seq";
       public          postgres    false    219    5            #           0    0    USUARIOS_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."USUARIOS_id_seq" OWNED BY public."USUARIOS".id;
          public          postgres    false    220            �            1259    16528    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    postgres    false    5            �            1259    16533    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    postgres    false    5            �            1259    16538    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false    5            �            1259    16544    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    5    223            $           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    224            �            1259    16545    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap    postgres    false    5            �            1259    16550    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap    postgres    false    5            �            1259    16555    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          postgres    false    226    5            %           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          postgres    false    227            �            1259    16556 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false    5            �            1259    16559    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    228    5            &           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    229            �            1259    16560    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false    5            �            1259    16565    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false    5            �            1259    16570    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false    5            �            1259    16575    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    232    5            '           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    233            L           2604    16576    ADMS id    DEFAULT     f   ALTER TABLE ONLY public."ADMS" ALTER COLUMN id SET DEFAULT nextval('public."ADMS_id_seq"'::regclass);
 8   ALTER TABLE public."ADMS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            M           2604    16577    PASSAGENS id    DEFAULT     p   ALTER TABLE ONLY public."PASSAGENS" ALTER COLUMN id SET DEFAULT nextval('public."PASSAGENS_id_seq"'::regclass);
 =   ALTER TABLE public."PASSAGENS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            N           2604    16578    USUARIOS id    DEFAULT     n   ALTER TABLE ONLY public."USUARIOS" ALTER COLUMN id SET DEFAULT nextval('public."USUARIOS_id_seq"'::regclass);
 <   ALTER TABLE public."USUARIOS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            P           2604    16579    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            R           2604    16580    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            S           2604    16581    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            T           2604    16582    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232                      0    16509    ADMS 
   TABLE DATA           �   COPY public."ADMS" (id, "ADM_NOME", "ADM_EMAIL", "ADM_DOCUMENTO", "ADM_SENHA", "ADM_TOKENACESSO", created_at, updated_at) FROM stdin;
    public          postgres    false    215   �Y       	          0    16515 	   PASSAGENS 
   TABLE DATA           �   COPY public."PASSAGENS" (id, "PAS_CIDADEIDA", "PAS_ESTADOIDA", "PAS_CIDADEVOLTA", "PAS_ESTADOVOLTA", "PAS_HORASIDA", "PAS_HORASVOLTA", "PAS_PRECO", "PAS_EMPRESA", created_at, updated_at, "PAS_DIAIDA", "PAS_DIAVOLTA", "PAS_SALVADA") FROM stdin;
    public          postgres    false    217   /[                 0    16521    USUARIOS 
   TABLE DATA           �   COPY public."USUARIOS" (id, "US_NOME", "US_EMAIL", "US_SENHA", "US_TIPOCOMPRADOR", "US_DOCUMENTO", created_at, updated_at) FROM stdin;
    public          postgres    false    219   �\                 0    16528    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          postgres    false    221   N^                 0    16533    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          postgres    false    222   k^                 0    16538    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    223   �^                 0    16545    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public          postgres    false    225   �^                 0    16550    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public          postgres    false    226   �^                 0    16556 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    228   �^                 0    16560    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    230   �_                 0    16565    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          postgres    false    231   �_                 0    16570    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    232   �a       (           0    0    ADMS_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."ADMS_id_seq"', 2, true);
          public          postgres    false    216            )           0    0    PASSAGENS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."PASSAGENS_id_seq"', 12, true);
          public          postgres    false    218            *           0    0    USUARIOS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."USUARIOS_id_seq"', 3, true);
          public          postgres    false    220            +           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    224            ,           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public          postgres    false    227            -           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);
          public          postgres    false    229            .           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    233            V           2606    16584    ADMS ADMS_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."ADMS"
    ADD CONSTRAINT "ADMS_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."ADMS" DROP CONSTRAINT "ADMS_pkey";
       public            postgres    false    215            Z           2606    16586    PASSAGENS PASSAGENS_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."PASSAGENS"
    ADD CONSTRAINT "PASSAGENS_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."PASSAGENS" DROP CONSTRAINT "PASSAGENS_pkey";
       public            postgres    false    217            \           2606    16588    USUARIOS USUARIOS_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."USUARIOS"
    ADD CONSTRAINT "USUARIOS_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."USUARIOS" DROP CONSTRAINT "USUARIOS_pkey";
       public            postgres    false    219            X           2606    16590    ADMS adms_adm_email_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public."ADMS"
    ADD CONSTRAINT adms_adm_email_unique UNIQUE ("ADM_EMAIL");
 F   ALTER TABLE ONLY public."ADMS" DROP CONSTRAINT adms_adm_email_unique;
       public            postgres    false    215            b           2606    16592    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            postgres    false    222            `           2606    16594    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            postgres    false    221            d           2606    16596    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    223            f           2606    16598 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    223            h           2606    16600    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public            postgres    false    225            j           2606    16602    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            postgres    false    226            m           2606    16604    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    228            o           2606    16606 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    230            r           2606    16608    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    231            u           2606    16610    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    232            w           2606    16612    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    232            ^           2606    16614 !   USUARIOS usuarios_us_email_unique 
   CONSTRAINT     d   ALTER TABLE ONLY public."USUARIOS"
    ADD CONSTRAINT usuarios_us_email_unique UNIQUE ("US_EMAIL");
 M   ALTER TABLE ONLY public."USUARIOS" DROP CONSTRAINT usuarios_us_email_unique;
       public            postgres    false    219            k           1259    16615    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            postgres    false    226            p           1259    16616    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            postgres    false    231            s           1259    16617    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            postgres    false    231               <  x�m�Mo�@E�ï`��4�t�]i0�����5M
cqFF1¯/mꢉ�wnr�;x�s&�太3�f�ӬM�?���$)Y�����&Ħ�U��MO½S��4����J�ƛ`SY�}p�q�r�I{&OL���a>_��8`����T��t�kvQ��ǭRx3?z a�u3H�h�ȃn�0X�3�[w.+�r���I|&�%#<��kE�[:�1)�$Y�*V�nh]��(���QSCw_�iv-��L�P�*�Ӵ��}��o��W���)��D�5w4mBS}Iw�G����6������ i��=&�AA��w�      	   �  x���1n�0���S�
�G�"��N�&h�".2ey���"�U�c�ҡS�A+�8�#+�\@�~�>�?9\��)������,>��k�U�]SS9���5��0.��e�x﩮����2,r�r�fȌ��d&�n�9����	�]w��[�����$�s@�!��8H�F��"�	~@-�������6�w`o��;$��,���Lg����.`V��gW�H��5�a���!u�_5+r�閔�o�����v-L���d@�v���"���h��l\dv��:�jC��5�#	�F��(0�J�әt����s��<5��`����3{h!�n�8]>Mg�@/#]��ÛPǸ��-��8�,����p�����:|��쮪�l�Ԇ����L(hS�D�=�/#Q���:�W�p^gc���������z�و���d2���h         D  x�m��r�0 ��ux
n�I �VV�jm� Jq�D��4�S}���^f���W�r��">�\v��b9���5����E�4ȹ�I���hݟg^:	�C2�u���d��y�^�=:(M�tɛ�5ѢaĀ]d�6� � ��Md4�!c�"��*��D@��)?�^-��~�ی����q�]��H7)�8ST������WO�����3^�K�oT���,x��7U�f"HT���M��P�&câ���Q���Yu����֡�P��!w�I<>���^�\T�KT���G؟�x�J�C~g�/8�i�U���/��2�,�I+(I�'Y���            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �         �   x�m��� ��kx��-xz�%M��8]}��e��nH>~
* @����f�=O����ԝW��q��4w��9AZ�c���UdJƒ��l���l��
ӈ➉�{F����� 7߯M���]�8�Hv��NX�t��.
��2�L!2��2y
�fqǋ���Ek���rz            x������ � �           x��_��0ş�S�8�l��J�L�A��#�B�/R�A(�������6�������sor�A�_WN���c�ݞ]L�� �[-��~ 4P�>�S�겢�=i#�<��L���xTQ{�Y�?+7<~T�u]��>Ye͓�����jI���Rd�^��"���빒�'N>���s�eĴ~�t�)�Na�6E�9��*@�*�p[rK�R�ճ�tkO����E��J��Í/��2(�-;m0>�����t�ToiD2Z���]�zM��|D0�v�+H�S��On�$�d>n�'��%sr��<ra/:%g����{ˤ绹����?�!�L��?Y�3�+��#�Y��}F������N
q�<Zd1%0f�<�܌�X���ͣǖ���&���1g���>=j�Y;�g �s��P��}(]���{X��~��7;7�$��,f߯��Rak�/:��p��`hif���A�z�K~C��HȦ	-��=�t�0���M1���p�.�XW�����p8�-H�            x������ � �     