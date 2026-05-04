.class public Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;,
        Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;
    }
.end annotation


# instance fields
.field private getter:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;

.field private multiplier:F

.field private setter:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    iput p1, p0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->multiplier:F

    .line 12
    iput-object p2, p0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->getter:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;

    .line 13
    iput-object p3, p0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setter:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->getter:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;->get(Ljava/lang/Object;)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->multiplier:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;
    .locals 0

    .line 17
    iput p1, p0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->multiplier:F

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setter:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;

    iget v1, p0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->multiplier:F

    div-float/2addr p2, v1

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;->set(Ljava/lang/Object;F)V

    return-void
.end method
