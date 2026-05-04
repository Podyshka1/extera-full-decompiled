.class public abstract Landroidx/credentials/Credential;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/Credential$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/Credential$Companion;


# instance fields
.field private final data:Landroid/os/Bundle;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/Credential$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/Credential$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/Credential;->Companion:Landroidx/credentials/Credential$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/Credential;->type:Ljava/lang/String;

    iput-object p2, p0, Landroidx/credentials/Credential;->data:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getData()Landroid/os/Bundle;
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/credentials/Credential;->data:Landroid/os/Bundle;

    return-object v0
.end method
