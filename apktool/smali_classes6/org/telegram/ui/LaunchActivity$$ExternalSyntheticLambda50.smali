.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda50;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda50;->f$2:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda50;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda50;->f$2:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$GmnTyhqg0OzH_bb9Vg64PCOAT_0(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method
