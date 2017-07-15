.class public final Lcom/miniclip/framework/Miniclip;
.super Ljava/lang/Object;
.source "Miniclip.java"


# static fields
.field private static activityListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/miniclip/framework/ActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private static facilitator:Lcom/miniclip/framework/MiniclipFacilitator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/miniclip/framework/Miniclip;->activityListeners:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/miniclip/framework/ActivityListener;)Z
    .locals 2
    .param p0, "listener"    # Lcom/miniclip/framework/ActivityListener;

    .prologue
    .line 34
    sget-object v1, Lcom/miniclip/framework/Miniclip;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 35
    .local v0, "result":Z
    sget-object v1, Lcom/miniclip/framework/Miniclip;->facilitator:Lcom/miniclip/framework/MiniclipFacilitator;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miniclip/framework/Miniclip;->facilitator:Lcom/miniclip/framework/MiniclipFacilitator;

    invoke-interface {v1, p0}, Lcom/miniclip/framework/MiniclipFacilitator;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    move-result v0

    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/miniclip/framework/Miniclip;->facilitator:Lcom/miniclip/framework/MiniclipFacilitator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miniclip/framework/Miniclip;->facilitator:Lcom/miniclip/framework/MiniclipFacilitator;

    invoke-interface {v0}, Lcom/miniclip/framework/MiniclipFacilitator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "threadingContext"    # Lcom/miniclip/framework/ThreadingContext;
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    sget-object v0, Lcom/miniclip/framework/Miniclip;->facilitator:Lcom/miniclip/framework/MiniclipFacilitator;

    invoke-interface {v0, p0, p1}, Lcom/miniclip/framework/MiniclipFacilitator;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public static removeListener(Lcom/miniclip/framework/ActivityListener;)Z
    .locals 2
    .param p0, "listener"    # Lcom/miniclip/framework/ActivityListener;

    .prologue
    .line 44
    sget-object v1, Lcom/miniclip/framework/Miniclip;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 45
    .local v0, "result":Z
    sget-object v1, Lcom/miniclip/framework/Miniclip;->facilitator:Lcom/miniclip/framework/MiniclipFacilitator;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miniclip/framework/Miniclip;->facilitator:Lcom/miniclip/framework/MiniclipFacilitator;

    invoke-interface {v1, p0}, Lcom/miniclip/framework/MiniclipFacilitator;->removeListener(Lcom/miniclip/framework/ActivityListener;)Z

    move-result v0

    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method public static setFacilitator(Lcom/miniclip/framework/MiniclipFacilitator;)V
    .locals 3
    .param p0, "facilitator"    # Lcom/miniclip/framework/MiniclipFacilitator;

    .prologue
    .line 14
    sget-object v1, Lcom/miniclip/framework/Miniclip;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 15
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {p0, v0}, Lcom/miniclip/framework/MiniclipFacilitator;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    goto :goto_0

    .line 17
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    sput-object p0, Lcom/miniclip/framework/Miniclip;->facilitator:Lcom/miniclip/framework/MiniclipFacilitator;

    .line 18
    return-void
.end method
