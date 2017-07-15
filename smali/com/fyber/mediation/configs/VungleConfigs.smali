.class public interface abstract annotation Lcom/fyber/mediation/configs/VungleConfigs;
.super Ljava/lang/Object;
.source "VungleConfigs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
    name = "Vungle"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fyber/mediation/configs/VungleConfigs;
        appId = ""
        autoRotationEnabled = false
        backButtonEnabled = false
        cancelDialogButton = ""
        cancelDialogText = ""
        cancelDialogTitle = ""
        incentivizedMode = true
        keepWatchingText = ""
        soundEnabled = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract appId()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "app.id"
    .end annotation
.end method

.method public abstract autoRotationEnabled()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "auto.rotation.enabled"
    .end annotation
.end method

.method public abstract backButtonEnabled()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "back.button.enabled"
    .end annotation
.end method

.method public abstract cancelDialogButton()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "cancel.dialog.button"
    .end annotation
.end method

.method public abstract cancelDialogText()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "cancel.dialog.text"
    .end annotation
.end method

.method public abstract cancelDialogTitle()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "cancel.dialog.title"
    .end annotation
.end method

.method public abstract incentivizedMode()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "incentivized.mode"
    .end annotation
.end method

.method public abstract keepWatchingText()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "keep.watching.text"
    .end annotation
.end method

.method public abstract soundEnabled()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "sound.enabled"
    .end annotation
.end method
