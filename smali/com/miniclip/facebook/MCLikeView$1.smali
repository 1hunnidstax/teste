.class Lcom/miniclip/facebook/MCLikeView$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCLikeView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/facebook/MCLikeView;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCLikeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCLikeView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miniclip/facebook/MCLikeView$1;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->MfacebookLikeButtonPressed()V

    .line 69
    return-void
.end method
