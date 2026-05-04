.class public abstract Landroidx/credentials/exceptions/domerrors/DomError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/credentials/exceptions/domerrors/DomError;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/credentials/exceptions/domerrors/DomError;->type:Ljava/lang/String;

    return-object v0
.end method
