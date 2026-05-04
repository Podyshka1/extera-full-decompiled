.class public abstract Landroidx/credentials/exceptions/ClearCredentialException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/ClearCredentialException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/exceptions/ClearCredentialException$Companion;


# instance fields
.field private final errorMessage:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/ClearCredentialException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/ClearCredentialException;->Companion:Landroidx/credentials/exceptions/ClearCredentialException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Landroidx/credentials/exceptions/ClearCredentialException;->type:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Landroidx/credentials/exceptions/ClearCredentialException;->errorMessage:Ljava/lang/CharSequence;

    return-void
.end method
