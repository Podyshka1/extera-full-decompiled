.class public final Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException;
.super Landroidx/credentials/exceptions/CreateCredentialException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException;->Companion:Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 28
    const-string v0, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    invoke-direct {p0, v0, p1}, Landroidx/credentials/exceptions/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
