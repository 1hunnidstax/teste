.class Lcom/miniclip/facebook/MCFacebook$5$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/facebook/MCFacebook$5;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$5;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCFacebook$5;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$5$1;->this$0:Lcom/miniclip/facebook/MCFacebook$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 380
    return-void
.end method
