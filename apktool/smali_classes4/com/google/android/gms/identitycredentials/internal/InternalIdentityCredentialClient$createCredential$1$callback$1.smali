.class public final Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$createCredential$1$callback$1;
.super Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialBaseCallbacks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;->createCredential(Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$createCredential$1$callback$1;->$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialBaseCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateCredentialV2(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$createCredential$1$callback$1;->$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
