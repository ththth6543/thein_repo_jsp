package ex6;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

public class MemberDAO {

    public List<MemberVO> getList() throws Exception {
        List<MemberVO> list = new ArrayList<>();
        String sql = "select id,userid,username, email,reg_date from member order by id desc";
        try(Connection conn = DBUtil.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery()) {
            while(rs.next()) {
                MemberVO vo = new MemberVO();
                vo.setId(rs.getInt("id"));
                vo.setUserid(rs.getString("userid"));
                vo.setUsername(rs.getString("username"));
                vo.setEmail(rs.getString("email"));
                vo.setRegDate(rs.getTimestamp("reg_date"));
                list.add(vo);
            }
        }
        return list;
    }

    public MemberVO get(int id) throws Exception {
        String sql = "select * from member where id = ?";
        try (Connection conn = DBUtil.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    MemberVO vo = new MemberVO();
                    vo.setId(rs.getInt("id"));
                    vo.setUserid(rs.getString("userid"));
                    vo.setPassword(rs.getString("password"));
                    vo.setUsername(rs.getString("username"));
                    vo.setEmail(rs.getString("email"));
                    vo.setRegDate(rs.getTimestamp("reg_date"));
                    return vo;
                }
            }
        }
        return null;
    }

    public int insert(MemberVO vo) throws Exception {
        String sql = "insert into member (userid, password, username, email) values (?,?,?,?)";
        try (Connection conn = DBUtil.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, vo.getUserid());
            pstmt.setString(2, vo.getPassword());
            pstmt.setString(3, vo.getUsername());
            pstmt.setString(4, vo.getEmail());
            return pstmt.executeUpdate();
        }
    }
    public int update(MemberVO vo) throws Exception {
        String sql = "update member set userid=?, password=?, username = ?,email = ? where id = ?";
        try (Connection conn = DBUtil.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, vo.getUserid());
            pstmt.setString(2, vo.getPassword());
            pstmt.setString(3, vo.getUsername());
            pstmt.setString(4, vo.getEmail());
            pstmt.setInt(5, vo.getId());
            return pstmt.executeUpdate();
        }
    }

    public int delete(int id) throws Exception {
        String sql = "DELETE FROM member WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            return pstmt.executeUpdate();
        }
    }
}
