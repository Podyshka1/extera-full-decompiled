.class public final Lcom/google/android/recaptcha/internal/zzbt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzbt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzbt;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzbt;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzbt;->zza:Lcom/google/android/recaptcha/internal/zzbt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza()Ljava/util/Map;
    .locals 60

    const/16 v0, 0x27

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzcv;->zza:Lcom/google/android/recaptcha/internal/zzcv;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x22

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/recaptcha/internal/zzdn;->zza:Lcom/google/android/recaptcha/internal/zzdn;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0x23

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/google/android/recaptcha/internal/zzdz;->zza:Lcom/google/android/recaptcha/internal/zzdz;

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x19

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/recaptcha/internal/zzde;->zza:Lcom/google/android/recaptcha/internal/zzde;

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v7, 0x25

    .line 5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/google/android/recaptcha/internal/zzdx;->zza:Lcom/google/android/recaptcha/internal/zzdx;

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0x15

    .line 6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/google/android/recaptcha/internal/zzcm;->zza:Lcom/google/android/recaptcha/internal/zzcm;

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/16 v11, 0x16

    .line 7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Lcom/google/android/recaptcha/internal/zzdw;->zza:Lcom/google/android/recaptcha/internal/zzdw;

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/16 v13, 0x17

    .line 8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lcom/google/android/recaptcha/internal/zzdo;->zza:Lcom/google/android/recaptcha/internal/zzdo;

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/16 v15, 0x18

    move/from16 v16, v1

    .line 9
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move/from16 v17, v3

    sget-object v3, Lcom/google/android/recaptcha/internal/zzdb;->zza:Lcom/google/android/recaptcha/internal/zzdb;

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v18, 0x1

    .line 10
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v19, v5

    sget-object v5, Lcom/google/android/recaptcha/internal/zzdr;->zza:Lcom/google/android/recaptcha/internal/zzdr;

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v20, 0x2

    .line 11
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v21, v9

    sget-object v9, Lcom/google/android/recaptcha/internal/zzcu;->zza:Lcom/google/android/recaptcha/internal/zzcu;

    invoke-static {v5, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/16 v9, 0x26

    .line 12
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move/from16 v22, v11

    sget-object v11, Lcom/google/android/recaptcha/internal/zzdv;->zza:Lcom/google/android/recaptcha/internal/zzdv;

    invoke-static {v9, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v23, 0x3

    .line 13
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move/from16 v24, v13

    sget-object v13, Lcom/google/android/recaptcha/internal/zzdf;->zza:Lcom/google/android/recaptcha/internal/zzdf;

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x29

    .line 14
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v25, v15

    sget-object v15, Lcom/google/android/recaptcha/internal/zzcs;->zza:Lcom/google/android/recaptcha/internal/zzcs;

    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/16 v26, 0x4

    .line 15
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/google/android/recaptcha/internal/zzdg;->zza:Lcom/google/android/recaptcha/internal/zzdg;

    invoke-static {v15, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v28, 0x11

    .line 16
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v29, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzda;->zza:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v30, 0x20

    .line 17
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v31, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzcn;->zza:Lcom/google/android/recaptcha/internal/zzcn;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v32, 0x5

    .line 18
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v33, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdi;->zza:Lcom/google/android/recaptcha/internal/zzdi;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v34, 0x1f

    .line 19
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v35, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzco;->zza:Lcom/google/android/recaptcha/internal/zzco;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v36, 0x24

    .line 20
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v37, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzcp;->zza:Lcom/google/android/recaptcha/internal/zzcp;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v38, 0x10

    .line 21
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v39, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzcw;->zza:Lcom/google/android/recaptcha/internal/zzcw;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v40, 0x1a

    .line 22
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v41, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzds;->zza:Lcom/google/android/recaptcha/internal/zzds;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v42, 0x6

    .line 23
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v43, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdh;->zza:Lcom/google/android/recaptcha/internal/zzdh;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v44, 0x1b

    .line 24
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v45, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdq;->zza:Lcom/google/android/recaptcha/internal/zzdq;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v46, 0x8

    .line 25
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v47, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdl;->zza:Lcom/google/android/recaptcha/internal/zzdl;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0x9

    .line 26
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v48, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdm;->zza:Lcom/google/android/recaptcha/internal/zzdm;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0xa

    .line 27
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v49, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdj;->zza:Lcom/google/android/recaptcha/internal/zzdj;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0xb

    .line 28
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v50, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdk;->zza:Lcom/google/android/recaptcha/internal/zzdk;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0xc

    .line 29
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v51, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdt;->zza:Lcom/google/android/recaptcha/internal/zzdt;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0xd

    .line 30
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v52, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdu;->zza:Lcom/google/android/recaptcha/internal/zzdu;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0x1e

    .line 31
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v53, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzcq;->zza:Lcom/google/android/recaptcha/internal/zzcq;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0xf

    .line 32
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v54, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzcr;->zza:Lcom/google/android/recaptcha/internal/zzcr;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0x14

    .line 33
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v55, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzct;->zza:Lcom/google/android/recaptcha/internal/zzct;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v15, 0x7

    .line 34
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v56, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdp;->zza:Lcom/google/android/recaptcha/internal/zzdp;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0x12

    .line 35
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v57, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzcy;->zza:Lcom/google/android/recaptcha/internal/zzcy;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0x13

    .line 36
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v58, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzcz;->zza:Lcom/google/android/recaptcha/internal/zzcz;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0x28

    .line 37
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v59, v0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzdy;->zza:Lcom/google/android/recaptcha/internal/zzdy;

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v15, 0x25

    new-array v15, v15, [Lkotlin/Pair;

    const/16 v27, 0x0

    aput-object v29, v15, v27

    aput-object v2, v15, v18

    aput-object v4, v15, v20

    aput-object v6, v15, v23

    aput-object v8, v15, v26

    aput-object v10, v15, v32

    aput-object v12, v15, v42

    const/4 v2, 0x7

    aput-object v14, v15, v2

    aput-object v1, v15, v46

    const/16 v1, 0x9

    aput-object v3, v15, v1

    const/16 v1, 0xa

    aput-object v5, v15, v1

    const/16 v1, 0xb

    aput-object v9, v15, v1

    const/16 v1, 0xc

    aput-object v11, v15, v1

    const/16 v1, 0xd

    aput-object v13, v15, v1

    const/16 v1, 0xe

    aput-object v7, v15, v1

    const/16 v1, 0xf

    aput-object v31, v15, v1

    aput-object v33, v15, v38

    aput-object v35, v15, v28

    const/16 v1, 0x12

    aput-object v37, v15, v1

    const/16 v1, 0x13

    aput-object v39, v15, v1

    const/16 v1, 0x14

    aput-object v41, v15, v1

    aput-object v43, v15, v21

    aput-object v45, v15, v22

    aput-object v47, v15, v24

    aput-object v48, v15, v25

    aput-object v49, v15, v19

    aput-object v50, v15, v40

    aput-object v51, v15, v44

    const/16 v1, 0x1c

    aput-object v52, v15, v1

    const/16 v1, 0x1d

    aput-object v53, v15, v1

    const/16 v1, 0x1e

    aput-object v54, v15, v1

    aput-object v55, v15, v34

    aput-object v56, v15, v30

    const/16 v1, 0x21

    aput-object v57, v15, v1

    aput-object v58, v15, v16

    aput-object v59, v15, v17

    aput-object v0, v15, v36

    .line 38
    invoke-static {v15}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
