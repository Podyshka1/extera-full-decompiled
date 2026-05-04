.class public Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;->Companion:Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;->type:Ljava/lang/String;

    iput-object p2, p0, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;->errorMessage:Ljava/lang/String;

    return-void
.end method
