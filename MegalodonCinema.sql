PGDMP         8                w         
   Lotte_Name    11.3    11.3 4    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            H           1262    16532 
   Lotte_Name    DATABASE     �   CREATE DATABASE "Lotte_Name" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Lotte_Name";
             postgres    false            �            1259    16533    CumRaps    TABLE       CREATE TABLE public."CumRaps" (
    id integer NOT NULL,
    "TenCum" character varying(255) NOT NULL,
    "DiaChi" character varying(255) NOT NULL,
    "Maps" text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."CumRaps";
       public         postgres    false            �            1259    16539    CumRaps_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CumRaps_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."CumRaps_id_seq";
       public       postgres    false    196            I           0    0    CumRaps_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."CumRaps_id_seq" OWNED BY public."CumRaps".id;
            public       postgres    false    197            �            1259    16541    DatChos    TABLE     &  CREATE TABLE public."DatChos" (
    "MaDatCho" uuid NOT NULL,
    "ThoiDiemDatVe" timestamp with time zone,
    "TongTien" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "UserId" integer,
    "SuatChieuId" integer
);
    DROP TABLE public."DatChos";
       public         postgres    false            �            1259    16544    Phims    TABLE     �  CREATE TABLE public."Phims" (
    id integer NOT NULL,
    "Ten" character varying(255) NOT NULL,
    "Poster" character varying(255) NOT NULL,
    "TraiLers" character varying(255) NOT NULL,
    "ThoiLuong" integer NOT NULL,
    "DaoDien" character varying(255) NOT NULL,
    "DienVien" character varying(255) NOT NULL,
    "TheLoai" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "NgayCongChieu" date
);
    DROP TABLE public."Phims";
       public         postgres    false            �            1259    16550    Phims_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Phims_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Phims_id_seq";
       public       postgres    false    199            J           0    0    Phims_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Phims_id_seq" OWNED BY public."Phims".id;
            public       postgres    false    200            �            1259    16552    Raps    TABLE     Q  CREATE TABLE public."Raps" (
    id integer NOT NULL,
    "TenRap" character varying(255) NOT NULL,
    "LoaiRap" character varying(255) NOT NULL,
    "KTNgang" integer NOT NULL,
    "KTDoc" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CumRapId" integer
);
    DROP TABLE public."Raps";
       public         postgres    false            �            1259    16558    Raps_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Raps_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Raps_id_seq";
       public       postgres    false    201            K           0    0    Raps_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Raps_id_seq" OWNED BY public."Raps".id;
            public       postgres    false    202            �            1259    16560 
   SuatChieus    TABLE     ?  CREATE TABLE public."SuatChieus" (
    id integer NOT NULL,
    "ThoiDiemBatDau" character varying(255),
    "ThoiDiemKetThuc" character varying(255),
    "GiaVe" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PhimId" integer,
    "RapId" integer
);
     DROP TABLE public."SuatChieus";
       public         postgres    false            �            1259    16566    SuatChieus_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SuatChieus_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SuatChieus_id_seq";
       public       postgres    false    203            L           0    0    SuatChieus_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."SuatChieus_id_seq" OWNED BY public."SuatChieus".id;
            public       postgres    false    204            �            1259    16568    Users    TABLE     �  CREATE TABLE public."Users" (
    id integer NOT NULL,
    "Email" character varying(255) NOT NULL,
    "Password" character varying(255) NOT NULL,
    "Name" character varying(255) NOT NULL,
    "UserType" integer NOT NULL,
    "TokenUser" text,
    "Verify" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "Phone" text
);
    DROP TABLE public."Users";
       public         postgres    false            �            1259    16574    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public       postgres    false    205            M           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
            public       postgres    false    206            �            1259    16576    Ves    TABLE     j  CREATE TABLE public."Ves" (
    "MaVe" uuid NOT NULL,
    "MaGhe" character varying(255) NOT NULL,
    "DiaChiNgang" character varying(255) NOT NULL,
    "DiaChiDoc" character varying(255) NOT NULL,
    "GiaTien" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "DatChoMaDatCho" uuid
);
    DROP TABLE public."Ves";
       public         postgres    false            �
           2604    16582 
   CumRaps id    DEFAULT     l   ALTER TABLE ONLY public."CumRaps" ALTER COLUMN id SET DEFAULT nextval('public."CumRaps_id_seq"'::regclass);
 ;   ALTER TABLE public."CumRaps" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            �
           2604    16583    Phims id    DEFAULT     h   ALTER TABLE ONLY public."Phims" ALTER COLUMN id SET DEFAULT nextval('public."Phims_id_seq"'::regclass);
 9   ALTER TABLE public."Phims" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199            �
           2604    16584    Raps id    DEFAULT     f   ALTER TABLE ONLY public."Raps" ALTER COLUMN id SET DEFAULT nextval('public."Raps_id_seq"'::regclass);
 8   ALTER TABLE public."Raps" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201            �
           2604    16585    SuatChieus id    DEFAULT     r   ALTER TABLE ONLY public."SuatChieus" ALTER COLUMN id SET DEFAULT nextval('public."SuatChieus_id_seq"'::regclass);
 >   ALTER TABLE public."SuatChieus" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203            �
           2604    16586    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205            7          0    16533    CumRaps 
   TABLE DATA               ]   COPY public."CumRaps" (id, "TenCum", "DiaChi", "Maps", "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    196   �?       9          0    16541    DatChos 
   TABLE DATA                  COPY public."DatChos" ("MaDatCho", "ThoiDiemDatVe", "TongTien", "createdAt", "updatedAt", "UserId", "SuatChieuId") FROM stdin;
    public       postgres    false    198   aC       :          0    16544    Phims 
   TABLE DATA               �   COPY public."Phims" (id, "Ten", "Poster", "TraiLers", "ThoiLuong", "DaoDien", "DienVien", "TheLoai", "createdAt", "updatedAt", "NgayCongChieu") FROM stdin;
    public       postgres    false    199   �D       <          0    16552    Raps 
   TABLE DATA               s   COPY public."Raps" (id, "TenRap", "LoaiRap", "KTNgang", "KTDoc", "createdAt", "updatedAt", "CumRapId") FROM stdin;
    public       postgres    false    201   L       >          0    16560 
   SuatChieus 
   TABLE DATA               �   COPY public."SuatChieus" (id, "ThoiDiemBatDau", "ThoiDiemKetThuc", "GiaVe", "createdAt", "updatedAt", "PhimId", "RapId") FROM stdin;
    public       postgres    false    203   iM       @          0    16568    Users 
   TABLE DATA               �   COPY public."Users" (id, "Email", "Password", "Name", "UserType", "TokenUser", "Verify", "createdAt", "updatedAt", "Phone") FROM stdin;
    public       postgres    false    205   �Q       B          0    16576    Ves 
   TABLE DATA               �   COPY public."Ves" ("MaVe", "MaGhe", "DiaChiNgang", "DiaChiDoc", "GiaTien", "createdAt", "updatedAt", "DatChoMaDatCho") FROM stdin;
    public       postgres    false    207   uU       N           0    0    CumRaps_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."CumRaps_id_seq"', 5, true);
            public       postgres    false    197            O           0    0    Phims_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Phims_id_seq"', 17, true);
            public       postgres    false    200            P           0    0    Raps_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Raps_id_seq"', 25, true);
            public       postgres    false    202            Q           0    0    SuatChieus_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SuatChieus_id_seq"', 71, true);
            public       postgres    false    204            R           0    0    Users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_id_seq"', 8, true);
            public       postgres    false    206            �
           2606    16588    CumRaps CumRaps_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."CumRaps"
    ADD CONSTRAINT "CumRaps_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."CumRaps" DROP CONSTRAINT "CumRaps_pkey";
       public         postgres    false    196            �
           2606    16590    DatChos DatChos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."DatChos"
    ADD CONSTRAINT "DatChos_pkey" PRIMARY KEY ("MaDatCho");
 B   ALTER TABLE ONLY public."DatChos" DROP CONSTRAINT "DatChos_pkey";
       public         postgres    false    198            �
           2606    16592    Phims Phims_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Phims"
    ADD CONSTRAINT "Phims_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Phims" DROP CONSTRAINT "Phims_pkey";
       public         postgres    false    199            �
           2606    16594    Raps Raps_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Raps"
    ADD CONSTRAINT "Raps_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Raps" DROP CONSTRAINT "Raps_pkey";
       public         postgres    false    201            �
           2606    16596    SuatChieus SuatChieus_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."SuatChieus"
    ADD CONSTRAINT "SuatChieus_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."SuatChieus" DROP CONSTRAINT "SuatChieus_pkey";
       public         postgres    false    203            �
           2606    16598    Users Users_Email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_Email_key" UNIQUE ("Email");
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_Email_key";
       public         postgres    false    205            �
           2606    16600    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public         postgres    false    205            �
           2606    16602    Ves Ves_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Ves"
    ADD CONSTRAINT "Ves_pkey" PRIMARY KEY ("MaVe");
 :   ALTER TABLE ONLY public."Ves" DROP CONSTRAINT "Ves_pkey";
       public         postgres    false    207            �
           2606    16603     DatChos DatChos_SuatChieuId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DatChos"
    ADD CONSTRAINT "DatChos_SuatChieuId_fkey" FOREIGN KEY ("SuatChieuId") REFERENCES public."SuatChieus"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."DatChos" DROP CONSTRAINT "DatChos_SuatChieuId_fkey";
       public       postgres    false    2737    203    198            �
           2606    16608    DatChos DatChos_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DatChos"
    ADD CONSTRAINT "DatChos_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."DatChos" DROP CONSTRAINT "DatChos_UserId_fkey";
       public       postgres    false    205    2741    198            �
           2606    16613    Raps Raps_CumRapId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Raps"
    ADD CONSTRAINT "Raps_CumRapId_fkey" FOREIGN KEY ("CumRapId") REFERENCES public."CumRaps"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public."Raps" DROP CONSTRAINT "Raps_CumRapId_fkey";
       public       postgres    false    196    201    2729            �
           2606    16618 !   SuatChieus SuatChieus_PhimId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SuatChieus"
    ADD CONSTRAINT "SuatChieus_PhimId_fkey" FOREIGN KEY ("PhimId") REFERENCES public."Phims"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public."SuatChieus" DROP CONSTRAINT "SuatChieus_PhimId_fkey";
       public       postgres    false    2733    203    199            �
           2606    16623     SuatChieus SuatChieus_RapId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SuatChieus"
    ADD CONSTRAINT "SuatChieus_RapId_fkey" FOREIGN KEY ("RapId") REFERENCES public."Raps"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."SuatChieus" DROP CONSTRAINT "SuatChieus_RapId_fkey";
       public       postgres    false    2735    203    201            �
           2606    16628    Ves Ves_DatChoMaDatCho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ves"
    ADD CONSTRAINT "Ves_DatChoMaDatCho_fkey" FOREIGN KEY ("DatChoMaDatCho") REFERENCES public."DatChos"("MaDatCho") ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."Ves" DROP CONSTRAINT "Ves_DatChoMaDatCho_fkey";
       public       postgres    false    207    2731    198            7   �  x����o�F�g�8������E,[�
˱jB��.G���J�b��mt	��Zt��!�h /"�
��?�;�J�@��f |߻��}����J��_�M;�quy�
ǣ����p9{��a�L�����l9{�IO����H��xCj����N&�qq{{:�����O�x8���x;DI�Q�������=hq�@
�$���Z@��e\Q �+�c����b�JCq�ۡM=�w� w�e(��=���q����C YҦ��u"U�JϠ�����3)�m%�h<���iu7W�;�x0�����7�o�w���qc=�����S��Z;����v3	N�N��j.�*æLJ;S[�Se�h�5�wD�|���U�����p�h'l�3[�v�������nT�dr��=��=���B���ړ��`�P��qBuQ���
���|U1��d'��l��;�ZɈ,��w�,g�z����N;��r�SJ�~L�E�u3R[�ߒ������U�>U��I`��
@)��Jn*�a��V�R�����F$1�21�bVF��FR�TKF�z���:U[.U�s�D�7QdG��nIy��v����H����L�QbO�k���ǲ;Z�����&guG��r9��]QX3t{}:�� ��� 	�94�s���)(d�@i�<�+�M�
b�k�YWVH�u�jV�_ѡ�E�{�W��v����_��g*���(���#��R^��6z)fё��v������%�0�m�R i,��v�ag�gz��⟴�Z��{�w^�h���5BPBi��43F��Kja0fp�����XS�M�%D;����������03�F���a�8:��R� K��E����-)�������_D�      9     x���M�� �u8E�#�m~l�,�@��ahRM������{z|�7=��V���j��r,aXrk��h)^0�H3�~�'
0�A#���(L�FU�F���]�%�Kd _���H���F����`�Н�=Zc��٣SY�>	�'�*X(��p���p��ӡ`�8�V�P�X�n��j�K+� ,R�#��~�1���'�k�I�1��A%`�_
<8�g���q'/�sCY�'P�=��6�{��Wyl�e&��\�������� �Q�<��3�����:      :   x  x��WKo��^_����CR���ɲ"ڒ(Y��qQ��"��Q�2R�UҢ��`��f�i;`�A�E[$�]0����sm'AlN�A7�#Q<�����Z��Y����O�KO�7?��I�y����	���ZaLCK�,\���"jܻ�Z��4H�dJ%;�ߣ�)u�ك���Hw&��j��t)g)nN��`�Β�ᖗ��%��.�'x���଄�l���>�<ۣaJf��$I2����|�tQ�]�=��o~�TY��e��V�\o�ZC�%uw��ru��\�Q4q��@��x/��0;�	�7�M-��/{+�^R��-s���cT�C�;:�vmT�Q��>`M�0�y��I8�@�d��D���W16�Wܻ��nC�I�U��Ѣ���(h�=���n����ħ�.�400!_?7�^��������������ܒU)_���C55��^x���Zq`�ģ~4c�3�	Q��Q	��)ޣa��p�$!�6��Y�@�"#�L��g0z���?�V��P4���wA),)�5O�f�=7p���4�mD4K��-�<�&��n�ﭐR�K��x�GI%"�>E�`J��+NS|J%PA�"l�y�uy�|  |������r{I8 �G9u��V�NIl{ך���ϧ6>a��O�{�o����h��"��ZPwKZY�ݩ�᠛��?0B)�o�bx�m}��`3b�:�%�1'sQ�f|ď���}+����1ܣ1�|N8��]R��1Nf�(zAQ@:�b��Y�"�5*���GQE�w4$��5�F��{ٗp��?�{����~Z�a��9����_���t�x���
R*�,fx,.��Q��+x���eF:��4iG�\ �n��7*��V����=0�|�Ɵd�&4�j�)v�2�q�84�b�g���T�?��YC�4�1��B8��~��(qa�� p>��I�l �����6*��W�t_T��~����@榉�F���{M��F��|b��&�Z�bU�bp�L���8V\�k��l�P�L��P�q��	�{�Y	�H:��[arY�C�����$�H�����T�d�����JzU$X�E4������ �%�my�[�X�u�{�� )�-v�1Y�͇M ��L7I�$���}ܟ�����|�60@# ͺx@ �&"򰝯������I��������cf+����˦��������m��P/G�ö����ѵ=7�Af��s
���D؈Na�̿��O�>I�xgLwdYo�$kJAKE%h	�@l+�|�[p�����؂�������刃mͭ��)�����y�-�*ɺ$.��pi�{�0:��d�K��1�K����m�l8ZD��9���o�`@v1����K�7��� b�VP�ǲ�	�}�:���(��H�z���@�&���5@x�Rs/�7��0����М�"�[���T-e;ҷ��3���DC�
��;��%���n8ޅz��I�D��$�3=gk��O޾������� M\x����~a�jC�$])��J���ACX��/�C�Upx��A�>�4��.���Z"۬F1���k�ڨ�#�`��E��C��b���we� ��"�h�p��,�h�����Mo��Dd��"Si�U��!s�t��(::��G�@��a����#S��xj��<"����+% ؁�;��[`u^Q���L[�!e�t��A�7���a�0Q� �0�� O��O��nB���ǄZCV%�Z`-���+�9?����j� # #�����oÂ�qњU��q:�D�5�Q��>���0���0h���PBI��W����9�Z�� {y#�3�����t�����T���\�
��[�ʊ��Sigg�?���      <   F  x�}�9n�0 k��%x�p�g�����Z6B�a,hhrA.�SH
ia��B{�|�8tF������JA�,�ZlY�jA�,�o,U+h[�<�!r�@�[bPQ7TGA�Y�T����:�>~�:�.�e!��I ?�܂gy �PR�<��iĚ���D�YC�5r�$�γ��2��3)���e�J�wR�/ƗY�5-�H�����t�l��\�5#��@����\3�N&�6÷�VƬ���>���@V��Rr�;��m��5������Fs!�HVJ��ނ��@�Ѭ���,XY��J�!&=�,d�>�����oY�;�{���/�Z� p/n      >     x���K�8E��*z��TB��Zz��h�vbI�z���	pA G1 ��"������O� h#Ր��/	8!�  �:8J��j⾒��A�K8��i�M���a\���)Ԝ�[�#��od���2b	���%ŕw& Z�6��޺�{Kp�	uJ���r�X�[R^�ra򐿃Ы��$�u�O��z�`���j3Jo��3}HE��8�J��7Iʃ����F�K2��V��ǝZ�#X�I�RNx�RR��JH��Y�U̧u�#c@jo���S�I	��2�"���^�%ᕧ��@'���H!u��f��/՛���^|\N0�%ᵻN����G�1Z�$��~hӈàU}�?W9�ݶJx�S��?�����Z/��<������@n���w��h���"��-��ն�w��������=���Iy$7'	����ֿ�$�,n��n|\�5��^
����i����@e��UR^�I�z��u_9Y��$�o���5iQںm�8���.v@�9�W��b +�/EqW���!�8��t��2,�#(�C	�8I�S<�*����&l�x�. �(V��b>"� �!���]�Y@;��u�������Å����$wՇ�Jux<�J�R�VPh�g�v��!yhW㴓DZ1��R��r����H�$)065�Ӌ�dC��.ϫD<�2<�$�<^Ib���E����鱬�Ǯ�:�[���D��`�e찑ľed�HOl݉��ҹ�}3�EB�'��y��E`��E��v��d���n
���z�Rt��J��nM�H��6�iL��D4N<I�D��G]���4L�GQ\�_����x�)��R3�ǚ�b�PC3�o�Q�,�Asl��ׯr9o6�H9#Y'���gxkۦ�Hrֳ|ՙ��UW��G�"]�,Շ:��]A�"yLZ5��.��]�u]�bv��L�̥�#^|�xf7�e3�ER^Ӊ�%cO������E^��wurx�:e�3v�E"��
On� Ivw6;#�IR`���nB�5�n۞J�����y���b1      @   �  x���Is�8��r��#��"���,���R�J������d�'!��tW�|�S���W����#.<����`�w��|]x{��"�N:��"��C�:ʹ�PS�
	�lqڸ܋X�1��%,�.-0�e�l�>��X_\uhR���﫺�g��R�ݴl��ު�V�����.����p�f���p�P+��v�3�oj=�&�t3uMhn�c�E~u_^�Hm"k"%�e���|��m ��=�� ���H�������ڎ�!\�d��H�Tx���J���_6��4m�DՂ�`X�}O��:X�͢��3Qe�^�U�o^�)mӖ�%'�)I���A���S{��oc��`{��������4�鎁�$���2�Y���HmI�!a�f��qW��������zӏ�Zi����7Y��~T���ԣQ� n�#��'��rʼT�}��YCK��7d��������`�g5~��6̎e�JeD}Ctq��[���ѥ�H�����$��"��ɘ�PB�%	K9a��3�[sEۧ�аd��'�7|vC�CLGUb+��/����e��Z����힞�Fx��N�ʨ�G�AnӘ�3��g�T��U9�Nk�\ss~ F��nf1��[�{i�A|�E)y��/8�
]d��9�"A������'�t�Oʘ�'����«����M��ԧ��gh�wgcS��]q8�Vi� :������Uٷ�s�2o�����fiߪ�75�ך��Եw=��W�vA��4;]g���֦��[�F�}�8�o�M����n;�H�9�}�|@�:���+P,��&B_<d�<.�8_��z�螇����J�!>��ɑ�_\N�:
�ez2=�oP�D��+�&�m	@�a^%ґ�p^��	�,G��퇾�:z[Ax��*)@�g�3$��d��>������`��[:3'/�I�o�m�������)C����q��N��N�3      B   �  x���Kr�0��p��O���$vy�s�lx��?�ҩ�4�θ(6���gV��8��C��4��q������楱���� �Atoz����@�k�죧*��"�W:��PU'�넧uT��譨�^4��r#�9{SY��0�tC]�Q����y�Tu�(U�*�.d��<LfG�s���X⅌7_���2�i�ca��	&�eB�:��md�!H�wXe���d2�*stM��)E�|�hE#�ʰ���1t���6��XQ)�}��^S�z���{r��;j�Ay���"�1ur��.2N

U�*3����d�G�M<�{=%%��V$%�_E��f'l�F�I���7o�����А���t�<���Q8UA-*ф�n��w��3��ph��cݦp�qfp
�������D	Zf���m��ғ�@���Cb�e骘��k��/���     