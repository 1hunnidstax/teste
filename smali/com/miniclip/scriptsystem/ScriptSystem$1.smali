.class final Lcom/miniclip/scriptsystem/ScriptSystem$1;
.super Ljava/lang/Object;
.source "ScriptSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/scriptsystem/ScriptSystem;->triggerGlobalIdJNICall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    # getter for: Lcom/miniclip/scriptsystem/ScriptSystem;->globalID:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/scriptsystem/ScriptSystem;->access$000()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/miniclip/scriptsystem/ScriptSystem;->setGlobalIdJNI(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/miniclip/scriptsystem/ScriptSystem;->access$100(Ljava/lang/String;)V

    .line 60
    return-void
.end method
