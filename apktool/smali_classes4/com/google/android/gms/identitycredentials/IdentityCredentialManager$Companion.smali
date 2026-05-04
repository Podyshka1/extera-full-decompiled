.class public final Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identitycredentials/IdentityCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClient(Landroid/content/Context;)Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;

    invoke-direct {v0, p1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
