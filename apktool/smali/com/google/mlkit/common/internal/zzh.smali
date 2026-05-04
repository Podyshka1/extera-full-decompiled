.class public final synthetic Lcom/google/mlkit/common/internal/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    const-class v1, Lcom/google/mlkit/common/model/CustomRemoteModel;

    const-class v2, Lcom/google/mlkit/common/internal/model/zzg;

    invoke-interface {p1, v2}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;-><init>(Ljava/lang/Class;Lcom/google/firebase/inject/Provider;)V

    return-object v0
.end method
