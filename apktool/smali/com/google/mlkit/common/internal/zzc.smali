.class public final synthetic Lcom/google/mlkit/common/internal/zzc;
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
    .locals 1

    .line 1
    const-class v0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lcom/google/mlkit/common/model/RemoteModelManager;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/mlkit/common/model/RemoteModelManager;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
