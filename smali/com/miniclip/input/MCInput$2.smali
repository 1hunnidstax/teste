.class Lcom/miniclip/input/MCInput$2;
.super Ljava/lang/Object;
.source "MCInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCInput;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/input/MCInput;

.field final synthetic val$deviceId:I

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/miniclip/input/MCInput;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/input/MCInput;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/miniclip/input/MCInput$2;->this$0:Lcom/miniclip/input/MCInput;

    iput p2, p0, Lcom/miniclip/input/MCInput$2;->val$deviceId:I

    iput p3, p0, Lcom/miniclip/input/MCInput$2;->val$keyCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miniclip/input/MCInput$2;->this$0:Lcom/miniclip/input/MCInput;

    iget v1, p0, Lcom/miniclip/input/MCInput$2;->val$deviceId:I

    iget v2, p0, Lcom/miniclip/input/MCInput$2;->val$keyCode:I

    const/4 v3, 0x1

    # invokes: Lcom/miniclip/input/MCInput;->nativeKeyEvent(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/miniclip/input/MCInput;->access$100(Lcom/miniclip/input/MCInput;IIZ)V

    .line 184
    return-void
.end method
