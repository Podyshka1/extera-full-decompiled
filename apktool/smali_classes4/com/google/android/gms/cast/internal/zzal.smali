.class final Lcom/google/android/gms/cast/internal/zzal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/internal/zzas;

.field final synthetic zzb:Lcom/google/android/gms/cast/internal/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/zzaq;Lcom/google/android/gms/cast/internal/zzas;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzal;->zzb:Lcom/google/android/gms/cast/internal/zzaq;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzal;->zza:Lcom/google/android/gms/cast/internal/zzas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzal;->zzb:Lcom/google/android/gms/cast/internal/zzaq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/zzaq;->zzN(Lcom/google/android/gms/cast/internal/zzaq;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzal;->zza:Lcom/google/android/gms/cast/internal/zzas;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 2
    invoke-interface/range {v2 .. v11}, Lcom/google/android/gms/cast/internal/zzas;->zza(Ljava/lang/String;JILjava/lang/Object;JJ)V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzal;->zza:Lcom/google/android/gms/cast/internal/zzas;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/cast/internal/zzas;->zzb(Ljava/lang/String;JJJ)V

    :cond_0
    return-void
.end method
