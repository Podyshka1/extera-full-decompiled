.class public final Landroidx/credentials/exceptions/ClearCredentialUnknownException;
.super Landroidx/credentials/exceptions/ClearCredentialException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/ClearCredentialUnknownException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/exceptions/ClearCredentialUnknownException$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialUnknownException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/ClearCredentialUnknownException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/ClearCredentialUnknownException;->Companion:Landroidx/credentials/exceptions/ClearCredentialUnknownException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 27
    const-string v0, "android.credentials.ClearCredentialStateException.TYPE_UNKNOWN"

    invoke-direct {p0, v0, p1}, Landroidx/credentials/exceptions/ClearCredentialException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
