.class public final Landroidx/credentials/GetCredentialResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/GetCredentialResponse$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/GetCredentialResponse$Companion;


# instance fields
.field private final credential:Landroidx/credentials/Credential;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/GetCredentialResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/GetCredentialResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/GetCredentialResponse;->Companion:Landroidx/credentials/GetCredentialResponse$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/credentials/Credential;)V
    .locals 1

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/GetCredentialResponse;->credential:Landroidx/credentials/Credential;

    return-void
.end method


# virtual methods
.method public final getCredential()Landroidx/credentials/Credential;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/credentials/GetCredentialResponse;->credential:Landroidx/credentials/Credential;

    return-object v0
.end method
