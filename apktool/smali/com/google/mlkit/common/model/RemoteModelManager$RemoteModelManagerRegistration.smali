.class public Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/model/RemoteModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteModelManagerRegistration"
.end annotation


# instance fields
.field private final zza:Ljava/lang/Class;

.field private final zzb:Lcom/google/firebase/inject/Provider;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;->zza:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;->zzb:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/firebase/inject/Provider;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;->zzb:Lcom/google/firebase/inject/Provider;

    return-object v0
.end method

.method final zzb()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;->zza:Ljava/lang/Class;

    return-object v0
.end method
