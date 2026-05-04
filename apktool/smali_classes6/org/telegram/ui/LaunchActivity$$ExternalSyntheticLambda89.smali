.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda89;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Components/BulletinFactory;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$OEXfzOClX54DHt4BsTci0Ve7B7c(Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method
