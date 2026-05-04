.class public final Landroidx/credentials/exceptions/CreateCredentialInterruptedException;
.super Landroidx/credentials/exceptions/CreateCredentialException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/CreateCredentialInterruptedException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/exceptions/CreateCredentialInterruptedException$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialInterruptedException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/CreateCredentialInterruptedException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/CreateCredentialInterruptedException;->Companion:Landroidx/credentials/exceptions/CreateCredentialInterruptedException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 29
    const-string v0, "android.credentials.CreateCredentialException.TYPE_INTERRUPTED"

    invoke-direct {p0, v0, p1}, Landroidx/credentials/exceptions/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
