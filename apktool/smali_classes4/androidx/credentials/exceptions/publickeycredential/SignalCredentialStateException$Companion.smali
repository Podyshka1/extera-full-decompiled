.class public final Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFrom(Ljava/lang/String;)Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;
    .locals 2

    .line 43
    new-instance v0, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;

    const-string v1, "error_type_unknown"

    invoke-direct {v0, v1, p1}, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
