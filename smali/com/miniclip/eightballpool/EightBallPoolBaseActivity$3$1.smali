.class Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3$1;
.super Ljava/lang/Object;
.source "EightBallPoolBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;


# direct methods
.method constructor <init>(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3$1;->this$1:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3$1;->this$1:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;

    iget-object v0, v0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;->this$0:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

    # invokes: Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->nativeOnGlobalLayout()V
    invoke-static {v0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->access$000(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;)V

    .line 226
    return-void
.end method
