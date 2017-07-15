.class Lcom/inmobi/ads/NativeStrandTimerView$1;
.super Ljava/lang/Object;
.source "NativeStrandTimerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/NativeStrandTimerView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeStrandTimerView;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeStrandTimerView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandTimerView$1;->a:Lcom/inmobi/ads/NativeStrandTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandTimerView$1;->a:Lcom/inmobi/ads/NativeStrandTimerView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/inmobi/ads/NativeStrandTimerView;->a(Lcom/inmobi/ads/NativeStrandTimerView;F)V

    .line 177
    return-void
.end method
