.class public final Landroidx/credentials/exceptions/domerrors/NoModificationAllowedError;
.super Landroidx/credentials/exceptions/domerrors/DomError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/domerrors/NoModificationAllowedError$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/exceptions/domerrors/NoModificationAllowedError$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/exceptions/domerrors/NoModificationAllowedError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/domerrors/NoModificationAllowedError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/domerrors/NoModificationAllowedError;->Companion:Landroidx/credentials/exceptions/domerrors/NoModificationAllowedError$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    const-string v0, "androidx.credentials.TYPE_NO_MODIFICATION_ALLOWED_ERROR"

    invoke-direct {p0, v0}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    return-void
.end method
