.class Lcom/miniclip/platform/MCViewManager$2$1;
.super Ljava/lang/Object;
.source "MCViewManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCViewManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/platform/MCViewManager$2;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCViewManager$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/platform/MCViewManager$2;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$2$1;->this$0:Lcom/miniclip/platform/MCViewManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 366
    # getter for: Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$800()Landroid/widget/RelativeLayout;

    move-result-object v0

    # getter for: Lcom/miniclip/platform/MCViewManager;->initView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$700()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 362
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 358
    return-void
.end method
