.class final Lcom/google/android/gms/internal/cast/zzva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzvi;


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:Lcom/google/android/gms/internal/cast/zzux;

.field private final zzf:Z

.field private final zzg:[I

.field private final zzh:I

.field private final zzi:Lcom/google/android/gms/internal/cast/zzul;

.field private final zzj:Lcom/google/android/gms/internal/cast/zzvz;

.field private final zzk:Lcom/google/android/gms/internal/cast/zztf;

.field private final zzl:Lcom/google/android/gms/internal/cast/zzvc;

.field private final zzm:Lcom/google/android/gms/internal/cast/zzus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/cast/zzva;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwj;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/cast/zzux;IZ[IIILcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzd:[Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/cast/zztf;->zzc(Lcom/google/android/gms/internal/cast/zzux;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/cast/zzva;->zzg:[I

    iput p9, p0, Lcom/google/android/gms/internal/cast/zzva;->zzh:I

    iput-object p11, p0, Lcom/google/android/gms/internal/cast/zzva;->zzl:Lcom/google/android/gms/internal/cast/zzvc;

    iput-object p12, p0, Lcom/google/android/gms/internal/cast/zzva;->zzi:Lcom/google/android/gms/internal/cast/zzul;

    iput-object p13, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    iput-object p14, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzva;->zze:Lcom/google/android/gms/internal/cast/zzux;

    iput-object p15, p0, Lcom/google/android/gms/internal/cast/zzva;->zzm:Lcom/google/android/gms/internal/cast/zzus;

    return-void
.end method

.method private static zzA(Ljava/lang/Object;ILcom/google/android/gms/internal/cast/zzvi;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/cast/zzvi;->zzh(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzB(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/cast/zztp;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/cast/zztp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztp;->zzK()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzC(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzD(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzE(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/cast/zzwq;->zzD(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/cast/zzsu;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/cast/zzwq;->zzd(ILcom/google/android/gms/internal/cast/zzsu;)V

    return-void
.end method

.method static zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;
    .locals 32

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzvh;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/cast/zzvh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzvh;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/cast/zzva;->zza:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move/from16 v18, v16

    move-object/from16 v17, v7

    move/from16 v7, v18

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 10
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 12
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 14
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    .line 23
    new-array v7, v13, [I

    move v13, v12

    move v12, v9

    move v9, v13

    move-object/from16 v17, v7

    move v13, v10

    move/from16 v18, v14

    move v7, v4

    move v4, v15

    .line 6
    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzvh;->zze()[Ljava/lang/Object;

    move-result-object v14

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzvh;->zza()Lcom/google/android/gms/internal/cast/zzux;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    add-int v19, v18, v9

    add-int v9, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 26
    new-array v11, v11, [I

    .line 27
    new-array v9, v9, [Ljava/lang/Object;

    move/from16 v20, v3

    move/from16 v21, v20

    move/from16 v22, v18

    move/from16 v23, v19

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v24, v4, 0x1

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v25, v3, 0x1

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v25

    goto :goto_c

    :cond_15
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v25

    goto :goto_d

    :cond_16
    move/from16 v3, v24

    :goto_d
    add-int/lit8 v24, v3, 0x1

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_18

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v8, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v25, v8, 0x1

    .line 31
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_17

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v3, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v25

    goto :goto_e

    :cond_17
    shl-int v8, v8, v24

    or-int/2addr v3, v8

    move/from16 v8, v25

    goto :goto_f

    :cond_18
    move/from16 v8, v24

    :goto_f
    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_19

    add-int/lit8 v6, v20, 0x1

    .line 32
    aput v21, v17, v20

    move/from16 v20, v6

    :cond_19
    and-int/lit16 v6, v3, 0xff

    and-int/lit16 v5, v3, 0x800

    move-object/from16 v26, v0

    const/16 v0, 0x33

    if-lt v6, v0, :cond_23

    add-int/lit8 v0, v8, 0x1

    .line 33
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v27, v0

    const v0, 0xd800

    if-lt v8, v0, :cond_1b

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v30, v27

    move/from16 v27, v8

    move/from16 v8, v30

    const/16 v30, 0xd

    :goto_10
    add-int/lit8 v31, v8, 0x1

    .line 34
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v0, :cond_1a

    and-int/lit16 v0, v8, 0x1fff

    shl-int v0, v0, v30

    or-int v27, v27, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v8, v31

    const v0, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v0, v8, v30

    or-int v8, v27, v0

    move/from16 v0, v31

    goto :goto_11

    :cond_1b
    move/from16 v0, v27

    :goto_11
    move/from16 v27, v0

    add-int/lit8 v0, v6, -0x33

    move/from16 v30, v2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1d

    :cond_1c
    const/4 v2, 0x1

    goto :goto_14

    :cond_1d
    const/16 v2, 0xc

    if-ne v0, v2, :cond_20

    .line 36
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/cast/zzvh;->zzc()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1f

    if-eqz v5, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v5, 0x0

    goto :goto_15

    :cond_1f
    :goto_12
    add-int/lit8 v0, v16, 0x1

    div-int/lit8 v24, v21, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 37
    aget-object v16, v14, v16

    aput-object v16, v9, v24

    :goto_13
    move/from16 v16, v0

    goto :goto_15

    :goto_14
    add-int/lit8 v0, v16, 0x1

    .line 34
    div-int/lit8 v24, v21, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    .line 35
    aget-object v2, v14, v16

    aput-object v2, v9, v28

    goto :goto_13

    :cond_20
    :goto_15
    add-int/2addr v8, v8

    .line 38
    aget-object v0, v14, v8

    .line 39
    instance-of v2, v0, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_21

    .line 40
    check-cast v0, Ljava/lang/reflect/Field;

    :goto_16
    move v2, v4

    move/from16 v28, v5

    goto :goto_17

    .line 41
    :cond_21
    check-cast v0, Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 42
    aput-object v0, v14, v8

    goto :goto_16

    .line 43
    :goto_17
    invoke-virtual {v10, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    add-int/lit8 v8, v8, 0x1

    .line 44
    aget-object v4, v14, v8

    .line 45
    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_22

    .line 46
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_18

    .line 47
    :cond_22
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/cast/zzva;->zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 48
    aput-object v4, v14, v8

    .line 49
    :goto_18
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v29, v1

    move/from16 v25, v27

    move/from16 v5, v28

    const/4 v8, 0x0

    move/from16 v28, v2

    goto/16 :goto_25

    :cond_23
    move/from16 v30, v2

    move v2, v4

    add-int/lit8 v0, v16, 0x1

    .line 50
    aget-object v4, v14, v16

    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/cast/zzva;->zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move/from16 v27, v0

    const/16 v0, 0x9

    if-eq v6, v0, :cond_24

    const/16 v0, 0x11

    if-ne v6, v0, :cond_25

    :cond_24
    move/from16 v28, v2

    const/4 v2, 0x1

    goto/16 :goto_1e

    :cond_25
    const/16 v0, 0x1b

    if-eq v6, v0, :cond_2d

    const/16 v0, 0x31

    if-ne v6, v0, :cond_26

    add-int/lit8 v16, v16, 0x2

    move/from16 v28, v2

    const/4 v2, 0x1

    goto/16 :goto_1d

    :cond_26
    const/16 v0, 0xc

    if-eq v6, v0, :cond_2a

    const/16 v0, 0x1e

    if-eq v6, v0, :cond_2a

    const/16 v0, 0x2c

    if-ne v6, v0, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v0, 0x32

    if-ne v6, v0, :cond_29

    add-int/lit8 v0, v16, 0x2

    add-int/lit8 v28, v22, 0x1

    .line 55
    aput v21, v17, v22

    div-int/lit8 v22, v21, 0x3

    .line 56
    aget-object v27, v14, v27

    add-int v22, v22, v22

    aput-object v27, v9, v22

    if-eqz v5, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v16, v16, 0x3

    .line 57
    aget-object v0, v14, v0

    aput-object v0, v9, v22

    move/from16 v0, v16

    move/from16 v22, v28

    move/from16 v28, v2

    :goto_19
    move/from16 v16, v3

    goto :goto_20

    :cond_28
    move/from16 v16, v3

    move/from16 v22, v28

    const/4 v5, 0x0

    move/from16 v28, v2

    goto :goto_20

    :cond_29
    move/from16 v28, v2

    const/4 v2, 0x1

    goto :goto_1f

    .line 53
    :cond_2a
    :goto_1a
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/cast/zzvh;->zzc()I

    move-result v0

    move/from16 v28, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    if-eqz v5, :cond_2b

    goto :goto_1b

    :cond_2b
    move/from16 v16, v3

    move/from16 v0, v27

    const/4 v5, 0x0

    goto :goto_20

    :cond_2c
    :goto_1b
    add-int/lit8 v16, v16, 0x2

    div-int/lit8 v0, v21, 0x3

    add-int/2addr v0, v0

    add-int/2addr v0, v2

    .line 54
    aget-object v24, v14, v27

    aput-object v24, v9, v0

    :goto_1c
    move/from16 v0, v16

    goto :goto_19

    :cond_2d
    move/from16 v28, v2

    const/4 v2, 0x1

    add-int/lit8 v16, v16, 0x2

    .line 65
    :goto_1d
    div-int/lit8 v0, v21, 0x3

    add-int/2addr v0, v0

    add-int/2addr v0, v2

    .line 52
    aget-object v24, v14, v27

    aput-object v24, v9, v0

    goto :goto_1c

    .line 50
    :goto_1e
    div-int/lit8 v0, v21, 0x3

    add-int/2addr v0, v0

    add-int/2addr v0, v2

    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v9, v0

    :goto_1f
    move/from16 v16, v3

    move/from16 v0, v27

    .line 58
    :goto_20
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v3, v16

    and-int/lit16 v4, v3, 0x1000

    const v16, 0xfffff

    if-eqz v4, :cond_31

    const/16 v4, 0x11

    if-gt v6, v4, :cond_31

    add-int/lit8 v4, v8, 0x1

    .line 59
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v27, v0

    const v0, 0xd800

    if-lt v8, v0, :cond_2f

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_21
    add-int/lit8 v25, v4, 0x1

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v0, :cond_2e

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v8, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v25

    goto :goto_21

    :cond_2e
    shl-int v4, v4, v16

    or-int/2addr v8, v4

    goto :goto_22

    :cond_2f
    move/from16 v25, v4

    :goto_22
    add-int v4, v7, v7

    div-int/lit8 v16, v8, 0x20

    add-int v4, v4, v16

    .line 61
    aget-object v0, v14, v4

    move-object/from16 v29, v1

    .line 62
    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    .line 63
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_23

    .line 64
    :cond_30
    check-cast v0, Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 65
    aput-object v0, v14, v4

    .line 66
    :goto_23
    invoke-virtual {v10, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v8, v8, 0x20

    move v4, v0

    goto :goto_24

    :cond_31
    move/from16 v27, v0

    move-object/from16 v29, v1

    move/from16 v25, v8

    move/from16 v4, v16

    const/4 v8, 0x0

    :goto_24
    const/16 v0, 0x12

    if-lt v6, v0, :cond_32

    const/16 v0, 0x31

    if-gt v6, v0, :cond_32

    add-int/lit8 v0, v23, 0x1

    .line 67
    aput v2, v17, v23

    move/from16 v23, v0

    :cond_32
    move v0, v2

    move/from16 v16, v27

    :goto_25
    add-int/lit8 v1, v21, 0x1

    .line 68
    aput v28, v11, v21

    add-int/lit8 v2, v21, 0x2

    move/from16 v27, v0

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_33

    const/high16 v0, 0x20000000

    goto :goto_26

    :cond_33
    const/4 v0, 0x0

    :goto_26
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_34

    const/high16 v3, 0x10000000

    goto :goto_27

    :cond_34
    const/4 v3, 0x0

    :goto_27
    if-eqz v5, :cond_35

    const/high16 v5, -0x80000000

    goto :goto_28

    :cond_35
    const/4 v5, 0x0

    :goto_28
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v0, v3

    or-int/2addr v0, v5

    or-int/2addr v0, v6

    or-int v0, v0, v27

    .line 69
    aput v0, v11, v1

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v0, v8, 0x14

    or-int/2addr v0, v4

    .line 70
    aput v0, v11, v2

    move/from16 v4, v25

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    const/4 v3, 0x0

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v26, v0

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/cast/zzva;

    .line 71
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/cast/zzvh;->zza()Lcom/google/android/gms/internal/cast/zzux;

    move-result-object v14

    .line 72
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/cast/zzvh;->zzc()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    move-object v10, v11

    move-object v11, v9

    move-object v9, v0

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/cast/zzva;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/cast/zzux;IZ[IIILcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)V

    return-object v9

    .line 73
    :cond_37
    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 74
    throw v0
.end method

.method private static zzj(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzk(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzl(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzm(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzn(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzo(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzp(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzq(I)Lcom/google/android/gms/internal/cast/zzvi;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzvi;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvf;->zza()Lcom/google/android/gms/internal/cast/zzvf;

    move-result-object v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zzvf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzr(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final zzt(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/cast/zzvi;->zzc()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/cast/zzvi;->zzc()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzu(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    aget v0, v0, p3

    .line 2
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    .line 4
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/cast/zzvi;->zzc()Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzw(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/cast/zzvi;->zzc()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    aget p1, p1, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzv(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzw(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzy(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/cast/zzsu;->zzb:Lcom/google/android/gms/internal/cast/zzsu;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzsu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/cast/zzsu;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/cast/zzsu;->zzb:Lcom/google/android/gms/internal/cast/zzsu;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzsu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzz(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v6, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const v8, 0xfffff

    move v2, v7

    move v4, v2

    move v9, v4

    move v3, v8

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    array-length v5, v5

    const/4 v10, 0x0

    if-ge v2, v5, :cond_1c

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    add-int/lit8 v13, v2, 0x2

    .line 2
    aget v14, v12, v2

    .line 3
    aget v12, v12, v13

    and-int v13, v12, v8

    const/16 v15, 0x11

    const/16 v16, 0x1

    if-gt v11, v15, :cond_2

    if-eq v13, v3, :cond_1

    if-ne v13, v8, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    int-to-long v3, v13

    .line 4
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v13

    :cond_1
    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v16, v12

    goto :goto_2

    :cond_2
    move v12, v7

    :goto_2
    and-int/2addr v5, v8

    .line 5
    sget-object v13, Lcom/google/android/gms/internal/cast/zztk;->zzJ:Lcom/google/android/gms/internal/cast/zztk;

    .line 6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/cast/zztk;->zza()I

    move-result v13

    if-lt v11, v13, :cond_3

    sget-object v13, Lcom/google/android/gms/internal/cast/zztk;->zzW:Lcom/google/android/gms/internal/cast/zztk;

    .line 5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/cast/zztk;->zza()I

    :cond_3
    move v15, v9

    int-to-long v8, v5

    const/16 v17, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1d

    .line 7
    :pswitch_0
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 8
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/cast/zzux;

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v8

    .line 10
    invoke-static {v14, v5, v8}, Lcom/google/android/gms/internal/cast/zztc;->zzt(ILcom/google/android/gms/internal/cast/zzux;Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result v5

    :goto_3
    add-int v9, v15, v5

    goto/16 :goto_1e

    .line 11
    :pswitch_1
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 12
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v10, v8, v8

    shr-long v8, v8, v17

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    xor-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v8

    :goto_4
    add-int/2addr v5, v8

    goto :goto_3

    .line 13
    :pswitch_2
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 14
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v8

    add-int v9, v8, v8

    shr-int/lit8 v8, v8, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    xor-int/2addr v8, v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto :goto_4

    .line 15
    :pswitch_3
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 16
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    :goto_5
    add-int/lit8 v5, v5, 0x8

    goto :goto_3

    .line 17
    :pswitch_4
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 18
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    :goto_6
    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 19
    :pswitch_5
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 20
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v8

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto :goto_4

    .line 21
    :pswitch_6
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 22
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto :goto_4

    .line 23
    :pswitch_7
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 24
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/cast/zzsu;

    .line 25
    sget v9, Lcom/google/android/gms/internal/cast/zztc;->$r8$clinit:I

    .line 26
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    :goto_7
    add-int/2addr v5, v9

    goto/16 :goto_3

    .line 27
    :pswitch_8
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 28
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 29
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v8

    invoke-static {v14, v5, v8}, Lcom/google/android/gms/internal/cast/zzvk;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result v5

    goto/16 :goto_3

    .line 30
    :pswitch_9
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 31
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/google/android/gms/internal/cast/zzsu;

    if-eqz v9, :cond_4

    .line 32
    check-cast v8, Lcom/google/android/gms/internal/cast/zzsu;

    sget v9, Lcom/google/android/gms/internal/cast/zztc;->$r8$clinit:I

    .line 33
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto :goto_7

    .line 34
    :cond_4
    check-cast v8, Ljava/lang/String;

    .line 35
    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzw(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto/16 :goto_4

    .line 36
    :pswitch_a
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 37
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 38
    :pswitch_b
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 39
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto/16 :goto_6

    .line 40
    :pswitch_c
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 41
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto/16 :goto_5

    .line 42
    :pswitch_d
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 43
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v8

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto/16 :goto_4

    .line 44
    :pswitch_e
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 45
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v8

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto/16 :goto_4

    .line 46
    :pswitch_f
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 47
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v8

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto/16 :goto_4

    .line 48
    :pswitch_10
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 49
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto/16 :goto_6

    .line 50
    :pswitch_11
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 51
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto/16 :goto_5

    .line 52
    :pswitch_12
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzr(I)Ljava/lang/Object;

    move-result-object v2

    .line 53
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 54
    invoke-static {v2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 55
    throw v10

    .line 57
    :pswitch_13
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 58
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v8

    .line 59
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 60
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    move v11, v7

    goto :goto_9

    :cond_5
    move v10, v7

    move v11, v10

    :goto_8
    if-ge v10, v9, :cond_6

    .line 61
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/cast/zzux;

    invoke-static {v14, v12, v8}, Lcom/google/android/gms/internal/cast/zztc;->zzt(ILcom/google/android/gms/internal/cast/zzux;Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_6
    :goto_9
    add-int v9, v15, v11

    goto/16 :goto_1e

    .line 62
    :pswitch_14
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 63
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    :goto_a
    add-int/2addr v8, v9

    add-int/2addr v8, v5

    :cond_7
    :goto_b
    add-int v9, v15, v8

    goto/16 :goto_1e

    .line 64
    :pswitch_15
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 65
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto :goto_a

    .line 66
    :pswitch_16
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 67
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto :goto_a

    .line 68
    :pswitch_17
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 69
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto :goto_a

    .line 70
    :pswitch_18
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 71
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zza(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto :goto_a

    .line 72
    :pswitch_19
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 73
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzk(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto :goto_a

    .line 74
    :pswitch_1a
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 75
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 76
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto/16 :goto_a

    .line 77
    :pswitch_1b
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 78
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto/16 :goto_a

    .line 79
    :pswitch_1c
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 80
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto/16 :goto_a

    .line 81
    :pswitch_1d
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 82
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto/16 :goto_a

    .line 83
    :pswitch_1e
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 84
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzl(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto/16 :goto_a

    .line 85
    :pswitch_1f
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 86
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzg(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto/16 :goto_a

    .line 87
    :pswitch_20
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 88
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto/16 :goto_a

    .line 89
    :pswitch_21
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 90
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    goto/16 :goto_a

    .line 91
    :pswitch_22
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 92
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 93
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_8

    :goto_c
    move v5, v7

    goto/16 :goto_3

    :cond_8
    shl-int/lit8 v9, v14, 0x3

    .line 94
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzj(Ljava/util/List;)I

    move-result v5

    .line 95
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    :goto_d
    mul-int/2addr v8, v9

    goto/16 :goto_4

    .line 96
    :pswitch_23
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 97
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 98
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9

    goto :goto_c

    :cond_9
    shl-int/lit8 v9, v14, 0x3

    .line 99
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzi(Ljava/util/List;)I

    move-result v5

    .line 100
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    goto :goto_d

    .line 101
    :pswitch_24
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 102
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzd(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 103
    :pswitch_25
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 104
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzb(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 105
    :pswitch_26
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 106
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 107
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_a

    goto :goto_c

    :cond_a
    shl-int/lit8 v9, v14, 0x3

    .line 108
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zza(Ljava/util/List;)I

    move-result v5

    .line 109
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    goto :goto_d

    .line 110
    :pswitch_27
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 111
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 112
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_b

    goto :goto_c

    :cond_b
    shl-int/lit8 v9, v14, 0x3

    .line 113
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzk(Ljava/util/List;)I

    move-result v5

    .line 114
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    goto :goto_d

    .line 115
    :pswitch_28
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 116
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 117
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_c

    move v8, v7

    goto/16 :goto_b

    :cond_c
    shl-int/lit8 v9, v14, 0x3

    .line 118
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    mul-int/2addr v8, v9

    move v9, v7

    .line 119
    :goto_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 120
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/cast/zzsu;

    .line 121
    invoke-virtual {v10}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v11

    add-int/2addr v11, v10

    add-int/2addr v8, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 122
    :pswitch_29
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v8

    .line 123
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 124
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_d

    move v10, v7

    goto :goto_10

    :cond_d
    shl-int/lit8 v10, v14, 0x3

    .line 125
    invoke-static {v10}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v10

    mul-int/2addr v10, v9

    move v11, v7

    :goto_f
    if-ge v11, v9, :cond_e

    .line 126
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 129
    check-cast v12, Lcom/google/android/gms/internal/cast/zzux;

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/cast/zztc;->zzv(Lcom/google/android/gms/internal/cast/zzux;Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result v12

    add-int/2addr v10, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_e
    :goto_10
    add-int v9, v15, v10

    goto/16 :goto_1e

    .line 130
    :pswitch_2a
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 131
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_f

    :goto_11
    move v9, v7

    goto :goto_16

    :cond_f
    shl-int/lit8 v9, v14, 0x3

    instance-of v10, v5, Lcom/google/android/gms/internal/cast/zzuf;

    .line 132
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    mul-int/2addr v9, v8

    if-eqz v10, :cond_11

    .line 137
    check-cast v5, Lcom/google/android/gms/internal/cast/zzuf;

    move v10, v7

    :goto_12
    if-ge v10, v8, :cond_13

    .line 138
    invoke-interface {v5, v10}, Lcom/google/android/gms/internal/cast/zzuf;->zze(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/cast/zzsu;

    if-eqz v12, :cond_10

    .line 139
    check-cast v11, Lcom/google/android/gms/internal/cast/zzsu;

    .line 140
    invoke-virtual {v11}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v12

    add-int/2addr v12, v11

    add-int/2addr v9, v12

    goto :goto_13

    .line 141
    :cond_10
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzw(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v9, v11

    :goto_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_11
    move v10, v7

    :goto_14
    if-ge v10, v8, :cond_13

    .line 133
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/cast/zzsu;

    if-eqz v12, :cond_12

    .line 134
    check-cast v11, Lcom/google/android/gms/internal/cast/zzsu;

    .line 135
    invoke-virtual {v11}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v12

    add-int/2addr v12, v11

    add-int/2addr v9, v12

    goto :goto_15

    .line 136
    :cond_12
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzw(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v9, v11

    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_13
    :goto_16
    add-int/2addr v9, v15

    goto/16 :goto_1e

    .line 142
    :pswitch_2b
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 143
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 144
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_c

    :cond_14
    shl-int/lit8 v8, v14, 0x3

    .line 145
    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v5, v8

    goto/16 :goto_3

    .line 146
    :pswitch_2c
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 147
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzb(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 148
    :pswitch_2d
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 149
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzd(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 150
    :pswitch_2e
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 151
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 152
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_15

    goto/16 :goto_c

    :cond_15
    shl-int/lit8 v9, v14, 0x3

    .line 153
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzf(Ljava/util/List;)I

    move-result v5

    .line 154
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    goto/16 :goto_d

    .line 155
    :pswitch_2f
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 156
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 157
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_16

    goto/16 :goto_c

    :cond_16
    shl-int/lit8 v9, v14, 0x3

    .line 158
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzl(Ljava/util/List;)I

    move-result v5

    .line 159
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v9

    goto/16 :goto_d

    .line 160
    :pswitch_30
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 161
    sget v8, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 162
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_17

    goto/16 :goto_11

    :cond_17
    shl-int/lit8 v8, v14, 0x3

    .line 163
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzg(Ljava/util/List;)I

    move-result v9

    .line 164
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    mul-int/2addr v5, v8

    add-int/2addr v9, v5

    goto/16 :goto_16

    .line 165
    :pswitch_31
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 166
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzb(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 167
    :pswitch_32
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 168
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzd(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    :pswitch_33
    move v5, v12

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 170
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/cast/zzux;

    .line 171
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v8

    .line 172
    invoke-static {v14, v5, v8}, Lcom/google/android/gms/internal/cast/zztc;->zzt(ILcom/google/android/gms/internal/cast/zzux;Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    move v5, v12

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v14, 0x3

    .line 174
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v10, v8, v8

    shr-long v8, v8, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    xor-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v5

    :goto_17
    add-int/2addr v0, v5

    :goto_18
    add-int v9, v15, v0

    move-object/from16 v0, p0

    goto/16 :goto_1e

    :cond_18
    move-object/from16 v0, p0

    goto/16 :goto_1d

    :pswitch_35
    move v5, v12

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v14, 0x3

    .line 176
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v8, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    xor-int/2addr v5, v8

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto :goto_17

    :pswitch_36
    move v5, v12

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 178
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    :goto_19
    add-int/lit8 v0, v0, 0x8

    :goto_1a
    add-int v9, v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1e

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1d

    :pswitch_37
    move v5, v12

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 180
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    :goto_1b
    add-int/lit8 v0, v0, 0x4

    goto :goto_1a

    :pswitch_38
    move v5, v12

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v14, 0x3

    .line 182
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto :goto_17

    :pswitch_39
    move v5, v12

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v14, 0x3

    .line 184
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto :goto_17

    :pswitch_3a
    move v5, v12

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v14, 0x3

    .line 186
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/cast/zzsu;

    .line 187
    sget v8, Lcom/google/android/gms/internal/cast/zztc;->$r8$clinit:I

    .line 188
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    :goto_1c
    add-int/2addr v0, v8

    goto/16 :goto_18

    :pswitch_3b
    move v5, v12

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 190
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 191
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v8

    invoke-static {v14, v5, v8}, Lcom/google/android/gms/internal/cast/zzvk;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_3c
    move v5, v12

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v14, 0x3

    .line 193
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Lcom/google/android/gms/internal/cast/zzsu;

    if-eqz v8, :cond_1a

    .line 194
    check-cast v5, Lcom/google/android/gms/internal/cast/zzsu;

    sget v8, Lcom/google/android/gms/internal/cast/zztc;->$r8$clinit:I

    .line 195
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto :goto_1c

    .line 196
    :cond_1a
    check-cast v5, Ljava/lang/String;

    .line 197
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzw(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_3d
    move v5, v12

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 199
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1a

    :pswitch_3e
    move v5, v12

    .line 200
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 201
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto/16 :goto_1b

    :pswitch_3f
    move v5, v12

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 203
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_40
    move v5, v12

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v14, 0x3

    .line 205
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_41
    move v5, v12

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v14, 0x3

    .line 207
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_42
    move v5, v12

    .line 208
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v14, 0x3

    .line 209
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_43
    move v5, v12

    .line 210
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 211
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v0

    goto/16 :goto_1b

    :pswitch_44
    move v5, v12

    .line 212
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 213
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v5

    goto/16 :goto_5

    :cond_1b
    :goto_1d
    move v9, v15

    :goto_1e
    add-int/lit8 v2, v2, 0x3

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_1c
    move v15, v9

    .line 4
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 216
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 217
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cast/zzvz;->zza(Ljava/lang/Object;)I

    move-result v2

    add-int v9, v15, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    if-nez v2, :cond_1d

    return v9

    :cond_1d
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 218
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    throw v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    const v4, 0xfffff

    and-int/2addr v4, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    move-result v2

    .line 2
    aget v3, v3, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto/16 :goto_4

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 24
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 26
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzD(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzty;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 28
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 32
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 34
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzk(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzj(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 41
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_3
    add-int/2addr v1, v6

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 45
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 47
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 49
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 50
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 52
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 54
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzty;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 56
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 57
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 59
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zze:Lcom/google/android/gms/internal/cast/zzux;

    check-cast v0, Lcom/google/android/gms/internal/cast/zztp;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzx()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/cast/zztp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/cast/zztp;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/zztp;->zzI(I)V

    iput v1, v0, Lcom/google/android/gms/internal/cast/zzsh;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzG()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_4

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_3

    const/16 v5, 0x44

    if-eq v2, v5, :cond_3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 9
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    .line 11
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzi:Lcom/google/android/gms/internal/cast/zzul;

    .line 12
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/cast/zzul;->zza(Ljava/lang/Object;J)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 6
    aget v2, v2, v1

    .line 7
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/cast/zzvi;->zzd(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_4
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/cast/zzvi;->zzd(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zze(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zzb(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result v1

    const v3, 0xfffff

    and-int/2addr v3, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    move-result v1

    .line 3
    aget v4, v4, v0

    int-to-long v5, v3

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzu(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzw(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzu(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzw(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 12
    :pswitch_4
    sget v0, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 14
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 15
    invoke-static {p2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 16
    throw v2

    .line 20
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzi:Lcom/google/android/gms/internal/cast/zzul;

    .line 21
    invoke-virtual {v1, p1, p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzul;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 22
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzt(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 23
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 26
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 29
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 32
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 35
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 38
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 41
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 44
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzt(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 45
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 48
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzm(Ljava/lang/Object;JZ)V

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 51
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto :goto_1

    .line 54
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto :goto_1

    .line 57
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto :goto_1

    .line 60
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto :goto_1

    .line 63
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto :goto_1

    .line 66
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v5, v6, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzp(Ljava/lang/Object;JF)V

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    goto :goto_1

    .line 69
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzo(Ljava/lang/Object;JD)V

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 72
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzvk;->zzo(Lcom/google/android/gms/internal/cast/zzvz;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 73
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    .line 74
    throw v2

    .line 75
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mutating immutable message: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    if-nez v2, :cond_8

    iget-object v8, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    sget-object v9, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    const v10, 0xfffff

    move v3, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v8

    if-ge v2, v5, :cond_7

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result v5

    iget-object v12, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    move-result v13

    .line 2
    aget v14, v12, v2

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/4 v7, 0x1

    if-gt v13, v15, :cond_2

    add-int/lit8 v15, v2, 0x2

    .line 3
    aget v12, v12, v15

    and-int v15, v12, v10

    if-eq v15, v3, :cond_1

    if-ne v15, v10, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v15

    .line 4
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v15

    :cond_1
    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v7, v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    and-int/2addr v5, v10

    int-to-long v10, v5

    packed-switch v13, :pswitch_data_0

    :cond_3
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 113
    :pswitch_0
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v7

    .line 115
    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzwq;->zzp(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    goto :goto_3

    .line 116
    :pswitch_1
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzB(IJ)V

    goto :goto_3

    .line 118
    :pswitch_2
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzz(II)V

    goto :goto_3

    .line 120
    :pswitch_3
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzx(IJ)V

    goto :goto_3

    .line 122
    :pswitch_4
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzv(II)V

    goto :goto_3

    .line 124
    :pswitch_5
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzh(II)V

    goto :goto_3

    .line 126
    :pswitch_6
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzF(II)V

    goto :goto_3

    .line 128
    :pswitch_7
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/cast/zzsu;

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzd(ILcom/google/android/gms/internal/cast/zzsu;)V

    goto :goto_3

    .line 130
    :pswitch_8
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 131
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 132
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v7

    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzwq;->zzu(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    goto/16 :goto_3

    .line 133
    :pswitch_9
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v5, v6}, Lcom/google/android/gms/internal/cast/zzva;->zzE(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V

    goto/16 :goto_3

    .line 135
    :pswitch_a
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzD(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzb(IZ)V

    goto/16 :goto_3

    .line 137
    :pswitch_b
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzj(II)V

    goto/16 :goto_3

    .line 139
    :pswitch_c
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzl(IJ)V

    goto/16 :goto_3

    .line 141
    :pswitch_d
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzq(II)V

    goto/16 :goto_3

    .line 143
    :pswitch_e
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzH(IJ)V

    goto/16 :goto_3

    .line 145
    :pswitch_f
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzs(IJ)V

    goto/16 :goto_3

    .line 147
    :pswitch_10
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzk(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzn(IF)V

    goto/16 :goto_3

    .line 149
    :pswitch_11
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzva;->zzj(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzf(ID)V

    goto/16 :goto_3

    .line 151
    :pswitch_12
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_3

    .line 194
    :cond_4
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 196
    throw v16

    .line 105
    :pswitch_13
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 106
    aget v5, v5, v2

    .line 107
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 108
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v10

    .line 109
    sget v11, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    if-eqz v7, :cond_3

    .line 110
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    .line 111
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 112
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v6

    check-cast v13, Lcom/google/android/gms/internal/cast/zztd;

    invoke-virtual {v13, v5, v12, v10}, Lcom/google/android/gms/internal/cast/zztd;->zzp(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 102
    :pswitch_14
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 103
    aget v5, v5, v2

    .line 104
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 105
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 99
    :pswitch_15
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 100
    aget v5, v5, v2

    .line 101
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 102
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 96
    :pswitch_16
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 97
    aget v5, v5, v2

    .line 98
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 99
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 93
    :pswitch_17
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 94
    aget v5, v5, v2

    .line 95
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 96
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 90
    :pswitch_18
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 91
    aget v5, v5, v2

    .line 92
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 93
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 87
    :pswitch_19
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 88
    aget v5, v5, v2

    .line 89
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 90
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 84
    :pswitch_1a
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 85
    aget v5, v5, v2

    .line 86
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 87
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 81
    :pswitch_1b
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 82
    aget v5, v5, v2

    .line 83
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 84
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 78
    :pswitch_1c
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 79
    aget v5, v5, v2

    .line 80
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 81
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 75
    :pswitch_1d
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 76
    aget v5, v5, v2

    .line 77
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 78
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 72
    :pswitch_1e
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 73
    aget v5, v5, v2

    .line 74
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 75
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 69
    :pswitch_1f
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 70
    aget v5, v5, v2

    .line 71
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 72
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 66
    :pswitch_20
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 67
    aget v5, v5, v2

    .line 68
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 69
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 63
    :pswitch_21
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 64
    aget v5, v5, v2

    .line 65
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 66
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_3

    .line 60
    :pswitch_22
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 61
    aget v5, v5, v2

    .line 62
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v12, 0x0

    .line 63
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_23
    const/4 v12, 0x0

    .line 57
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 58
    aget v5, v5, v2

    .line 59
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 60
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_24
    const/4 v12, 0x0

    .line 54
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 55
    aget v5, v5, v2

    .line 56
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 57
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_25
    const/4 v12, 0x0

    .line 51
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 52
    aget v5, v5, v2

    .line 53
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 54
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_26
    const/4 v12, 0x0

    .line 48
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 49
    aget v5, v5, v2

    .line 50
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 51
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_27
    const/4 v12, 0x0

    .line 45
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 46
    aget v5, v5, v2

    .line 47
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 48
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    .line 40
    :pswitch_28
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 41
    aget v5, v5, v2

    .line 42
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 43
    sget v10, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    if-eqz v7, :cond_3

    .line 44
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 45
    invoke-interface {v6, v5, v7}, Lcom/google/android/gms/internal/cast/zzwq;->zze(ILjava/util/List;)V

    goto/16 :goto_3

    .line 33
    :pswitch_29
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 34
    aget v5, v5, v2

    .line 35
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 36
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v10

    .line 37
    sget v11, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    if-eqz v7, :cond_3

    .line 38
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v12, 0x0

    .line 39
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_3

    .line 40
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v6

    check-cast v13, Lcom/google/android/gms/internal/cast/zztd;

    invoke-virtual {v13, v5, v11, v10}, Lcom/google/android/gms/internal/cast/zztd;->zzu(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 28
    :pswitch_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 29
    aget v5, v5, v2

    .line 30
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 31
    sget v10, Lcom/google/android/gms/internal/cast/zzvk;->$r8$clinit:I

    if-eqz v7, :cond_3

    .line 32
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 33
    invoke-interface {v6, v5, v7}, Lcom/google/android/gms/internal/cast/zzwq;->zzE(ILjava/util/List;)V

    goto/16 :goto_3

    .line 25
    :pswitch_2b
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 26
    aget v5, v5, v2

    .line 27
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v12, 0x0

    .line 28
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_2c
    const/4 v12, 0x0

    .line 22
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 23
    aget v5, v5, v2

    .line 24
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 25
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_2d
    const/4 v12, 0x0

    .line 19
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 20
    aget v5, v5, v2

    .line 21
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 22
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_2e
    const/4 v12, 0x0

    .line 16
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 17
    aget v5, v5, v2

    .line 18
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 19
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_2f
    const/4 v12, 0x0

    .line 13
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 14
    aget v5, v5, v2

    .line 15
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 16
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_30
    const/4 v12, 0x0

    .line 10
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 11
    aget v5, v5, v2

    .line 12
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 13
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_31
    const/4 v12, 0x0

    .line 7
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 8
    aget v5, v5, v2

    .line 9
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 10
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_32
    const/4 v12, 0x0

    .line 3
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 5
    aget v5, v5, v2

    .line 6
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 7
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/cast/zzvk;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    goto/16 :goto_7

    :pswitch_33
    move v5, v12

    const/4 v12, 0x0

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 153
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v7

    .line 154
    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzwq;->zzp(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    goto/16 :goto_7

    :pswitch_34
    move v5, v12

    const/4 v12, 0x0

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 156
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzB(IJ)V

    :cond_5
    :goto_6
    move-object/from16 v0, p0

    goto/16 :goto_7

    :pswitch_35
    move v5, v12

    const/4 v12, 0x0

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 158
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzz(II)V

    goto :goto_6

    :pswitch_36
    move v5, v12

    const/4 v12, 0x0

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 160
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzx(IJ)V

    goto :goto_6

    :pswitch_37
    move v5, v12

    const/4 v12, 0x0

    .line 161
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzv(II)V

    goto :goto_6

    :pswitch_38
    move v5, v12

    const/4 v12, 0x0

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 164
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzh(II)V

    goto :goto_6

    :pswitch_39
    move v5, v12

    const/4 v12, 0x0

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzF(II)V

    goto :goto_6

    :pswitch_3a
    move v5, v12

    const/4 v12, 0x0

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzsu;

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzd(ILcom/google/android/gms/internal/cast/zzsu;)V

    goto :goto_6

    :pswitch_3b
    move v5, v12

    const/4 v12, 0x0

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 170
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 171
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v7

    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/cast/zzwq;->zzu(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    goto/16 :goto_7

    :pswitch_3c
    move v5, v12

    const/4 v12, 0x0

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0, v6}, Lcom/google/android/gms/internal/cast/zzva;->zzE(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V

    goto/16 :goto_6

    :pswitch_3d
    move v5, v12

    const/4 v12, 0x0

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 175
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    move-result v0

    .line 176
    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzb(IZ)V

    goto/16 :goto_6

    :pswitch_3e
    move v5, v12

    const/4 v12, 0x0

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 178
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzj(II)V

    goto/16 :goto_6

    :pswitch_3f
    move v5, v12

    const/4 v12, 0x0

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 180
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzl(IJ)V

    goto/16 :goto_6

    :pswitch_40
    move v5, v12

    const/4 v12, 0x0

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 182
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzq(II)V

    goto/16 :goto_6

    :pswitch_41
    move v5, v12

    const/4 v12, 0x0

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 184
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzH(IJ)V

    goto/16 :goto_6

    :pswitch_42
    move v5, v12

    const/4 v12, 0x0

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzs(IJ)V

    goto/16 :goto_6

    :pswitch_43
    move v5, v12

    const/4 v12, 0x0

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 188
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    move-result v0

    .line 189
    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzn(IF)V

    goto/16 :goto_6

    :pswitch_44
    move v5, v12

    const/4 v12, 0x0

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 191
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 192
    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/cast/zzwq;->zzf(ID)V

    :cond_6
    :goto_7
    add-int/lit8 v2, v2, 0x3

    const v10, 0xfffff

    goto/16 :goto_0

    .line 198
    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 193
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Lcom/google/android/gms/internal/cast/zzvz;->zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V

    return-void

    :cond_8
    const/16 v16, 0x0

    .line 4
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 197
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    .line 198
    throw v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_1

    .line 5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 7
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 52
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 53
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 54
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 56
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    const/4 p1, 0x0

    .line 58
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;)Z
    .locals 15

    move-object/from16 v1, p1

    const/4 v6, 0x0

    const v7, 0xfffff

    move v2, v6

    move v8, v2

    move v0, v7

    .line 1
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/cast/zzva;->zzh:I

    const/4 v9, 0x0

    const/4 v4, 0x1

    if-ge v8, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzva;->zzg:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    aget v3, v3, v8

    .line 2
    aget v10, v5, v3

    .line 3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    move-result v11

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    add-int/lit8 v12, v3, 0x2

    .line 4
    aget v5, v5, v12

    and-int v12, v5, v7

    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v4, v5

    if-eq v12, v0, :cond_1

    if-eq v12, v7, :cond_0

    int-to-long v13, v12

    sget-object v0, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v0, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :cond_0
    move v4, v2

    move v0, v12

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const/high16 v2, 0x10000000

    and-int/2addr v2, v11

    if-eqz v2, :cond_3

    move v2, v3

    move v3, v0

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    return v6

    :cond_3
    move v2, v3

    move v3, v0

    :goto_2
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    move-result v12

    const/16 v13, 0x9

    if-eq v12, v13, :cond_8

    const/16 v13, 0x11

    if-eq v12, v13, :cond_8

    const/16 v5, 0x1b

    if-eq v12, v5, :cond_6

    const/16 v5, 0x3c

    if-eq v12, v5, :cond_5

    const/16 v5, 0x44

    if-eq v12, v5, :cond_5

    const/16 v5, 0x31

    if-eq v12, v5, :cond_6

    const/16 v2, 0x32

    if-eq v12, v2, :cond_4

    goto :goto_4

    :cond_4
    and-int v2, v11, v7

    int-to-long v2, v2

    .line 13
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 15
    throw v9

    .line 16
    :cond_5
    invoke-direct {p0, v1, v10, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 17
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzA(Ljava/lang/Object;ILcom/google/android/gms/internal/cast/zzvi;)Z

    move-result v2

    if-nez v2, :cond_9

    return v6

    :cond_6
    and-int v5, v11, v7

    int-to-long v9, v5

    .line 7
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 9
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v2

    move v9, v6

    .line 10
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    .line 11
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 12
    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/cast/zzvi;->zzh(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    return v6

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 19
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzA(Ljava/lang/Object;ILcom/google/android/gms/internal/cast/zzvi;)Z

    move-result v2

    if-nez v2, :cond_9

    return v6

    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v0, v3

    move v2, v4

    goto/16 :goto_0

    :cond_a
    iget-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    if-nez v2, :cond_b

    return v4

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    throw v9
.end method
