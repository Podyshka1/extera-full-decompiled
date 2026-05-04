.class public final enum Lcom/google/android/gms/internal/vision/zzha;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzje;


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzb:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzc:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzd:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zze:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzf:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzg:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzh:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzi:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzj:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzk:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzl:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzm:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzn:Lcom/google/android/gms/internal/vision/zzha;

.field private static final zzo:Lcom/google/android/gms/internal/vision/zzjh;

.field private static final synthetic zzq:[Lcom/google/android/gms/internal/vision/zzha;


# instance fields
.field private final zzp:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "UNKNOWN_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zza:Lcom/google/android/gms/internal/vision/zzha;

    .line 34
    new-instance v1, Lcom/google/android/gms/internal/vision/zzha;

    const-string v3, "CONTACT_INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzb:Lcom/google/android/gms/internal/vision/zzha;

    .line 35
    new-instance v3, Lcom/google/android/gms/internal/vision/zzha;

    const-string v5, "EMAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/vision/zzha;->zzc:Lcom/google/android/gms/internal/vision/zzha;

    .line 36
    new-instance v5, Lcom/google/android/gms/internal/vision/zzha;

    const-string v7, "ISBN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/vision/zzha;->zzd:Lcom/google/android/gms/internal/vision/zzha;

    .line 37
    new-instance v7, Lcom/google/android/gms/internal/vision/zzha;

    const-string v9, "PHONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/vision/zzha;->zze:Lcom/google/android/gms/internal/vision/zzha;

    .line 38
    new-instance v9, Lcom/google/android/gms/internal/vision/zzha;

    const-string v11, "PRODUCT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/vision/zzha;->zzf:Lcom/google/android/gms/internal/vision/zzha;

    .line 39
    new-instance v11, Lcom/google/android/gms/internal/vision/zzha;

    const-string v13, "SMS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/vision/zzha;->zzg:Lcom/google/android/gms/internal/vision/zzha;

    .line 40
    new-instance v13, Lcom/google/android/gms/internal/vision/zzha;

    const-string v15, "TEXT"

    move/from16 v16, v2

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2, v2}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/vision/zzha;->zzh:Lcom/google/android/gms/internal/vision/zzha;

    .line 41
    new-instance v15, Lcom/google/android/gms/internal/vision/zzha;

    move/from16 v17, v2

    const-string v2, "URL"

    move/from16 v18, v4

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4, v4}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/vision/zzha;->zzi:Lcom/google/android/gms/internal/vision/zzha;

    .line 42
    new-instance v2, Lcom/google/android/gms/internal/vision/zzha;

    move/from16 v19, v4

    const-string v4, "WIFI"

    move/from16 v20, v6

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6, v6}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/vision/zzha;->zzj:Lcom/google/android/gms/internal/vision/zzha;

    .line 43
    new-instance v4, Lcom/google/android/gms/internal/vision/zzha;

    move/from16 v21, v6

    const-string v6, "GEO"

    move/from16 v22, v8

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8, v8}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/vision/zzha;->zzk:Lcom/google/android/gms/internal/vision/zzha;

    .line 44
    new-instance v6, Lcom/google/android/gms/internal/vision/zzha;

    move/from16 v23, v8

    const-string v8, "CALENDAR_EVENT"

    move/from16 v24, v10

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10, v10}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/vision/zzha;->zzl:Lcom/google/android/gms/internal/vision/zzha;

    .line 45
    new-instance v8, Lcom/google/android/gms/internal/vision/zzha;

    move/from16 v25, v10

    const-string v10, "DRIVER_LICENSE"

    move/from16 v26, v12

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12, v12}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/vision/zzha;->zzm:Lcom/google/android/gms/internal/vision/zzha;

    .line 46
    new-instance v10, Lcom/google/android/gms/internal/vision/zzha;

    move/from16 v27, v12

    const-string v12, "BOARDING_PASS"

    move/from16 v28, v14

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14, v14}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/vision/zzha;->zzn:Lcom/google/android/gms/internal/vision/zzha;

    const/16 v12, 0xe

    .line 47
    new-array v12, v12, [Lcom/google/android/gms/internal/vision/zzha;

    aput-object v0, v12, v16

    aput-object v1, v12, v18

    aput-object v3, v12, v20

    aput-object v5, v12, v22

    aput-object v7, v12, v24

    aput-object v9, v12, v26

    aput-object v11, v12, v28

    aput-object v13, v12, v17

    aput-object v15, v12, v19

    aput-object v2, v12, v21

    aput-object v4, v12, v23

    aput-object v6, v12, v25

    aput-object v8, v12, v27

    aput-object v10, v12, v14

    .line 48
    sput-object v12, Lcom/google/android/gms/internal/vision/zzha;->zzq:[Lcom/google/android/gms/internal/vision/zzha;

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzhd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzo:Lcom/google/android/gms/internal/vision/zzjh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzha;->zzp:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzha;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzq:[Lcom/google/android/gms/internal/vision/zzha;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzha;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzha;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/vision/zzha;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzn:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 16
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzm:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 15
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzl:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 14
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzk:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 13
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzj:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 12
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzi:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 11
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzh:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 10
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzg:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzf:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 8
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zze:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 7
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzd:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 6
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzc:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 5
    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzb:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 4
    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zza:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static zzb()Lcom/google/android/gms/internal/vision/zzjg;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhc;->zza:Lcom/google/android/gms/internal/vision/zzjg;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    const-class v1, Lcom/google/android/gms/internal/vision/zzha;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzha;->zzp:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzha;->zzp:I

    return v0
.end method
