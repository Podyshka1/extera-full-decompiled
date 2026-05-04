.class public final Landroidx/credentials/exceptions/NoCredentialException;
.super Landroidx/credentials/exceptions/GetCredentialException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/NoCredentialException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/exceptions/NoCredentialException$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/exceptions/NoCredentialException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/NoCredentialException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/NoCredentialException;->Companion:Landroidx/credentials/exceptions/NoCredentialException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 29
    const-string v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-direct {p0, v0, p1}, Landroidx/credentials/exceptions/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
