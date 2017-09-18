
/**********************************************************
 * .java
 * Alertas de segurança enviados pelo usuário
 * Version: 1.0.1
 * Generated by Easyfire. Do not modify this code 
 **********************************************************/

package br.com.easyhome.easyfire.models;

import br.com.easyhome.easyfire.base.ModelEF;
import br.com.easyhome.easyfire.services.AlertaServiceEF;
import br.com.easyhome.easyfire.models.MembroEF;
import br.com.easyhome.easyfire.services.MembroServiceEF;
import br.com.easyhome.easyfire.models.GrupoEF;
import br.com.easyhome.easyfire.services.GrupoServiceEF;

import br.com.easyhome.easyfire.delegates.EasyfireDelegate;



import com.google.firebase.database.Exclude;
import com.google.firebase.database.IgnoreExtraProperties;
import android.databinding.BaseObservable;
import android.support.annotation.NonNull;
import java.util.List;
import java.util.ArrayList;

import android.text.TextUtils;

@IgnoreExtraProperties
public class AlertaEF implements ModelEF, Comparable<AlertaEF>{
  
  public static final String COLLECTION = "alerta";
  
  //Firebase attributes
  @Exclude
  private String key;
  
  @Exclude
  private List<Class> parents = new ArrayList<>();
  
  @Exclude
  private String[] parentKeys = new String[]{""};


  
  //Foto do avatar do membro
  private String avatarMemebro = "";
  
  //Descrição do alerta
  private String descricao = "";
  
  //Foto associada ao alerta
  private String foto = "";
  
  //Nome do arquivo no dispositivo
  
  @Exclude private String fotoLocal = "";
  
  //Local onde o alerta foi gerado
  private String localizacao = "";
  
  //Nome do membro que gerou o Alerta
  private String nomeMembro = "";
  
  //Nome do membro que gerou o ultimo comentário
  private String nomeMembroUltimoComentario = "";
  
  //Número de comentários do alerta
  private Long numeroComentarios = 0L;
  
  //Flag que indica que o thumbnail da foto ja foi carregado para resolução 1x
  private Boolean ta1x = false;
  
  //Flag que indica que o thumbnail  da foto ja foi carregado para resolução 2x
  private Boolean ta2x = false;
  
  //Flag que indica que o thumbnail da foto ja foi carregado para resolução 3x
  private Boolean ta3x = false;
  
  //Momento que o alerta foi gerado
  private Long timestamp = 0L;
  
  //Tipo do alerta
  private String tipo = "";
  
  
  private String membroEFPath = "";
  
  
  
  @Exclude private MembroEF membroEF = null;
  
  
  private String grupoEFPath = "";
  
  
  
  @Exclude private GrupoEF grupoEF = null;
  

  //Construtores
  public AlertaEF(){}
  
  public AlertaEF(String key){
    this.key = key;
  }
  
  //Getters e Setters
  
  @Exclude
  public String getKey(){
    return this.key;
  }
  
  @Exclude
  public void setKey(String key){
    this.key = key;
  }
  
  @Exclude
  public List<Class> getParents(){
    return this.parents;
  }
  
  @Exclude
  public void setParents(List<Class> parents){
    this.parents = parents;
  }
  
  @Exclude
  public String[] getParentKeys(){
    return this.parentKeys;
  }
  
  @Exclude
  public void setParentKeys(String[] parentKeys){
    this.parentKeys = parentKeys;
  }
  
  @Exclude 
  public void addParentKey(Class clazz,String parentKey){
    this.parentKeys[getParentLevel(clazz)] = parentKey;
  }
  
  @Exclude
  public int getParentLevel(Class clazz){
    return this.parents.indexOf(clazz);
  }
  
  
  
  @Exclude
  public String getPath(){
      
    String path = COLLECTION.concat("/").concat(TextUtils.join("/",parentKeys));
    if(!path.endsWith("/")){
        path.concat("/");
    }
    
    return  path.concat(key);
  
  }

  
  
  
  
  
  public String getAvatarMemebro(){
    return this.avatarMemebro;
  }
  
  

  public void setAvatarMemebro(String avatarMemebro){
   this.avatarMemebro = avatarMemebro;
   
   
  } 

  
  
  
  public String getDescricao(){
    return this.descricao;
  }
  
  

  public void setDescricao(String descricao){
   this.descricao = descricao;
   
   
  } 

  
  
  
  public String getFoto(){
    return this.foto;
  }
  
  

  public void setFoto(String foto){
   this.foto = foto;
   
   
  } 

  
  
  @Exclude
  public String getFotoLocal(){
    return this.fotoLocal;
  }
  
  

  public void setFotoLocal(String fotoLocal){
   this.fotoLocal = fotoLocal;
   
   
  } 

  
  
  
  public String getLocalizacao(){
    return this.localizacao;
  }
  
  

  public void setLocalizacao(String localizacao){
   this.localizacao = localizacao;
   
   
  } 

  
  
  
  public String getNomeMembro(){
    return this.nomeMembro;
  }
  
  

  public void setNomeMembro(String nomeMembro){
   this.nomeMembro = nomeMembro;
   
   
  } 

  
  
  
  public String getNomeMembroUltimoComentario(){
    return this.nomeMembroUltimoComentario;
  }
  
  

  public void setNomeMembroUltimoComentario(String nomeMembroUltimoComentario){
   this.nomeMembroUltimoComentario = nomeMembroUltimoComentario;
   
   
  } 

  
  
  
  public Long getNumeroComentarios(){
    return this.numeroComentarios;
  }
  
  

  public void setNumeroComentarios(Long numeroComentarios){
   this.numeroComentarios = numeroComentarios;
   
   
  } 

  
  
  
  public Boolean getTa1x(){
    return this.ta1x;
  }
  
  

  public void setTa1x(Boolean ta1x){
   this.ta1x = ta1x;
   
   
  } 

  
  
  
  public Boolean getTa2x(){
    return this.ta2x;
  }
  
  

  public void setTa2x(Boolean ta2x){
   this.ta2x = ta2x;
   
   
  } 

  
  
  
  public Boolean getTa3x(){
    return this.ta3x;
  }
  
  

  public void setTa3x(Boolean ta3x){
   this.ta3x = ta3x;
   
   
  } 

  
  
  
  public Long getTimestamp(){
    return this.timestamp;
  }
  
  

  public void setTimestamp(Long timestamp){
   this.timestamp = timestamp;
   
   
  } 

  
  
  
  public String getTipo(){
    return this.tipo;
  }
  
  

  public void setTipo(String tipo){
   this.tipo = tipo;
   
   
  } 

  
  
  
  public String getMembroEFPath(){
    return this.membroEFPath;
  }
  
  

  public void setMembroEFPath(String membroEFPath){
   this.membroEFPath = membroEFPath;
   
   
  } 

  
  
  @Exclude
  public void getMembroEF(final EasyfireDelegate<MembroEF> delegate) {

       if (this.membroEF == null) {
           new MembroServiceEF().retrieve(this.membroEFPath, new EasyfireDelegate<MembroEF>() {
               @Override
               public void changed(MembroEF o) {
                   membroEF = o;
                   delegate.changed(o);
               }

               @Override
               public void error(Object object) {
                   delegate.error(object);
               }
           });
       } else {
           delegate.changed(this.membroEF);
       }
   }
  
  

  public void setMembroEF(MembroEF membroEF){
   this.membroEF = membroEF;
   
   
  } 

  
  
  
  public String getGrupoEFPath(){
    return this.grupoEFPath;
  }
  
  

  public void setGrupoEFPath(String grupoEFPath){
   this.grupoEFPath = grupoEFPath;
   
   
        this.getGrupoEFPath();
   
  } 

  
  
  @Exclude
  public void getGrupoEF(final EasyfireDelegate<GrupoEF> delegate) {

       if (this.grupoEF == null) {
           new GrupoServiceEF().retrieve(this.grupoEFPath, new EasyfireDelegate<GrupoEF>() {
               @Override
               public void changed(GrupoEF o) {
                   grupoEF = o;
                   delegate.changed(o);
               }

               @Override
               public void error(Object object) {
                   delegate.error(object);
               }
           });
       } else {
           delegate.changed(this.grupoEF);
       }
   }
  
  

  public void setGrupoEF(GrupoEF grupoEF){
   this.grupoEF = grupoEF;
   
   this.parentKeys[0] = this.grupoEF.getKey();
   this.grupoEFPath = this.grupoEF.getPath();
   
   
  } 

  	

  @Override
  public String toString() {
    return "AlertaEF{" +
     "key='" + key + '\'' +
     ", avatarMemebro='" + avatarMemebro + '\'' +
     ", descricao='" + descricao + '\'' +
     ", foto='" + foto + '\'' +
     ", fotoLocal='" + fotoLocal + '\'' +
     ", localizacao='" + localizacao + '\'' +
     ", nomeMembro='" + nomeMembro + '\'' +
     ", nomeMembroUltimoComentario='" + nomeMembroUltimoComentario + '\'' +
     ", numeroComentarios='" + numeroComentarios + '\'' +
     ", ta1x='" + ta1x + '\'' +
     ", ta2x='" + ta2x + '\'' +
     ", ta3x='" + ta3x + '\'' +
     ", timestamp='" + timestamp + '\'' +
     ", tipo='" + tipo + '\'' +
     ", membroEFPath='" + membroEFPath + '\'' +
     ", membroEF='" + membroEF + '\'' +
     ", grupoEFPath='" + grupoEFPath + '\'' +
     ", grupoEF='" + grupoEF + '\'' +
     "}";
  }
  
  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
        
    AlertaEF alertaEF = (AlertaEF ) o;
        
    return key != null ? key.equals(alertaEF.key) : alertaEF.key == null;

  }
  
  public boolean equalsContent(Object o) {
      if (this == o) return true;
      if (o == null || getClass() != o.getClass()) return false;
      if (!super.equals(o)) return false;

      AlertaEF alertaEF = (AlertaEF ) o;
      
      
      if (avatarMemebro != null ? !avatarMemebro.equals(alertaEF.avatarMemebro) : alertaEF.avatarMemebro != null) {
        return false;
      }
      
      if (descricao != null ? !descricao.equals(alertaEF.descricao) : alertaEF.descricao != null) {
        return false;
      }
      
      if (foto != null ? !foto.equals(alertaEF.foto) : alertaEF.foto != null) {
        return false;
      }
      
      if (fotoLocal != null ? !fotoLocal.equals(alertaEF.fotoLocal) : alertaEF.fotoLocal != null) {
        return false;
      }
      
      if (localizacao != null ? !localizacao.equals(alertaEF.localizacao) : alertaEF.localizacao != null) {
        return false;
      }
      
      if (nomeMembro != null ? !nomeMembro.equals(alertaEF.nomeMembro) : alertaEF.nomeMembro != null) {
        return false;
      }
      
      if (nomeMembroUltimoComentario != null ? !nomeMembroUltimoComentario.equals(alertaEF.nomeMembroUltimoComentario) : alertaEF.nomeMembroUltimoComentario != null) {
        return false;
      }
      
      if (numeroComentarios != null ? !numeroComentarios.equals(alertaEF.numeroComentarios) : alertaEF.numeroComentarios != null) {
        return false;
      }
      
      if (ta1x != null ? !ta1x.equals(alertaEF.ta1x) : alertaEF.ta1x != null) {
        return false;
      }
      
      if (ta2x != null ? !ta2x.equals(alertaEF.ta2x) : alertaEF.ta2x != null) {
        return false;
      }
      
      if (ta3x != null ? !ta3x.equals(alertaEF.ta3x) : alertaEF.ta3x != null) {
        return false;
      }
      
      if (timestamp != null ? !timestamp.equals(alertaEF.timestamp) : alertaEF.timestamp != null) {
        return false;
      }
      
      if (tipo != null ? !tipo.equals(alertaEF.tipo) : alertaEF.tipo != null) {
        return false;
      }
      
      if (membroEFPath != null ? !membroEFPath.equals(alertaEF.membroEFPath) : alertaEF.membroEFPath != null) {
        return false;
      }
      
      if (membroEF != null ? !membroEF.equals(alertaEF.membroEF) : alertaEF.membroEF != null) {
        return false;
      }
      
      if (grupoEFPath != null ? !grupoEFPath.equals(alertaEF.grupoEFPath) : alertaEF.grupoEFPath != null) {
        return false;
      }
      
      if (grupoEF != null ? !grupoEF.equals(alertaEF.grupoEF) : alertaEF.grupoEF != null) {
        return false;
      }
      
          
      return true;

  }
  
  @Override
  public int hashCode() {
    return key != null ? key.hashCode() : 0;
  }
  
  
  public boolean isChild(){
    return parents != null;
  }
  
  @Override
  public int compareTo(@NonNull AlertaEF alertaEF) {
      return this.key.compareTo(alertaEF.getKey());
  }
  
  public void store(EasyfireDelegate<AlertaEF> delegate){
      new AlertaServiceEF().store(this,delegate);
  }

  public void delete(EasyfireDelegate<Boolean> delegate){
      new AlertaServiceEF().delete(this,delegate);
  }
  
  
  
  
}