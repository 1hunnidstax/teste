.class final Lcom/miniclip/platform/MCViewManager$3;
.super Ljava/lang/Object;
.source "MCViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCViewManager;->fixScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    const-string v0, "cocojava"

    const-string v1, "fixScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    # getter for: Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$800()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    # getter for: Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$800()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 380
    :cond_0
    return-void
.end method
