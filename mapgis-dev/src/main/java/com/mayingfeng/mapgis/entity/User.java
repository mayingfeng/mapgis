package com.mayingfeng.mapgis.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.KeyType;
import com.mybatisflex.annotation.Table;
import com.mybatisflex.core.activerecord.Model;
import com.mybatisflex.core.keygen.KeyGenerators;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

@Table("user")
@Accessors(chain = true)
@Data
@EqualsAndHashCode(callSuper = true)
public class User extends Model<User> {

    @Id(keyType = KeyType.Generator, value= KeyGenerators.snowFlakeId)
    private String id;

    @Column(value = "username")
    private String username;

    @Column(value = "password")
    private String password;
}
