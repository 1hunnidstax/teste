.class final Lcom/miniclip/facebook/MCFacebook$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 177
    const-string v0, "MCFacebook"

    const-string v1, "UiLifecycleHelper StatusCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
